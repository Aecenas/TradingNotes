import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

import '../../core/app_error.dart';
import '../../core/enums.dart';
import '../../core/formatters.dart';
import '../../core/result.dart';
import '../../domain/entities/trade.dart' as domain;
import '../../domain/repositories/trade_repository.dart';
import '../db/app_database.dart';

class TradeRepositoryImpl implements TradeRepository {
  TradeRepositoryImpl(this._db, this._uuid);

  final AppDatabase _db;
  final Uuid _uuid;

  @override
  Future<Result<List<domain.Trade>>> getTrades(domain.TradeQuery query) async {
    try {
      final statement = _db.select(_db.trades);
      if (query.keyword != null && query.keyword!.trim().isNotEmpty) {
        final keyword = '%${query.keyword!.trim()}%';
        statement.where(
          (tbl) => tbl.title.like(keyword) | tbl.entryReason.like(keyword),
        );
      }
      if (query.market != null) {
        statement.where((tbl) => tbl.market.equals(query.market!.dbValue));
      }
      if (query.status != null) {
        statement.where((tbl) => tbl.status.equals(query.status!.dbValue));
      } else if (!query.includeArchived) {
        statement.where(
          (tbl) => tbl.status.isNotValue(TradeStatus.archived.dbValue),
        );
      }
      if (query.strategyType != null) {
        statement.where(
          (tbl) => tbl.strategyType.equals(query.strategyType!.dbValue),
        );
      }
      if (query.startFrom != null) {
        statement.where(
          (tbl) => tbl.startTime.isBiggerOrEqualValue(
            query.startFrom!.toUtc().millisecondsSinceEpoch,
          ),
        );
      }
      if (query.startTo != null) {
        statement.where(
          (tbl) => tbl.startTime.isSmallerOrEqualValue(
            query.startTo!.toUtc().millisecondsSinceEpoch,
          ),
        );
      }
      statement.orderBy([
        (t) => OrderingTerm(expression: t.startTime, mode: OrderingMode.desc),
      ]);

      final rows = await statement.get();
      final tradeIds = rows.map((e) => e.id).toList();
      final tradeTags = await _loadTradeTagMap(tradeIds);
      final reviewTags = await _loadReviewTagMap(tradeIds);

      final mapped = rows
          .map(
            (row) => _toDomain(
              row,
              tradeTags[row.id] ?? const [],
              reviewTags[row.id] ?? const [],
            ),
          )
          .where((trade) {
            if (query.tag == null || query.tag!.trim().isEmpty) {
              return true;
            }
            final target = query.tag!.trim();
            return trade.tags.contains(target) ||
                trade.reviewErrorTags.contains(target);
          })
          .toList();
      return Result.success(mapped);
    } catch (e) {
      return Result.failure(AppError(message: '获取 Trade 列表失败', cause: e));
    }
  }

  @override
  Future<Result<domain.Trade>> getTradeById(String tradeId) async {
    try {
      final row = await (_db.select(
        _db.trades,
      )..where((t) => t.id.equals(tradeId))).getSingleOrNull();
      if (row == null) {
        return Result.failure(const AppError(message: 'Trade 不存在'));
      }
      final tradeTags = await _loadTradeTagMap([tradeId]);
      final reviewTags = await _loadReviewTagMap([tradeId]);
      return Result.success(
        _toDomain(
          row,
          tradeTags[tradeId] ?? const [],
          reviewTags[tradeId] ?? const [],
        ),
      );
    } catch (e) {
      return Result.failure(AppError(message: '获取 Trade 详情失败', cause: e));
    }
  }

  @override
  Future<Result<void>> upsertTrade(domain.Trade trade) async {
    try {
      await _db.transaction(() async {
        await _db
            .into(_db.trades)
            .insertOnConflictUpdate(
              TradesCompanion(
                id: Value(trade.id),
                title: Value(trade.title),
                market: Value(trade.market.dbValue),
                strategyType: Value(trade.strategyType.dbValue),
                structureType: Value(trade.structureType.dbValue),
                thesis: Value(trade.thesis),
                entryReason: Value(trade.entryReason),
                expectation: Value(trade.expectation),
                invalidationCondition: Value(trade.invalidationCondition),
                status: Value(trade.status.dbValue),
                startTime: Value(
                  trade.startTime.toUtc().millisecondsSinceEpoch,
                ),
                endTime: Value(trade.endTime?.toUtc().millisecondsSinceEpoch),
                summaryPnl: Value(trade.summaryPnl),
                reviewText: Value(trade.reviewText),
                reviewScoreExecution: Value(trade.reviewScoreExecution),
                reviewScoreResult: Value(trade.reviewScoreResult),
                reviewPlanFollowed: Value(trade.reviewPlanFollowed?.dbValue),
                finalExitReason: const Value.absent(),
                createdAt: Value(
                  trade.createdAt.toUtc().millisecondsSinceEpoch,
                ),
                updatedAt: Value(
                  trade.updatedAt.toUtc().millisecondsSinceEpoch,
                ),
              ),
            );

        await _replaceTradeTags(trade.id, trade.tags);
        await _replaceReviewTags(trade.id, trade.reviewErrorTags);
      });
      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '保存 Trade 失败', cause: e));
    }
  }

  @override
  Future<Result<void>> closeTrade(
    String tradeId,
    domain.CloseTradeInput input,
  ) async {
    try {
      final current = await (_db.select(
        _db.trades,
      )..where((t) => t.id.equals(tradeId))).getSingleOrNull();
      if (current == null) {
        return Result.failure(const AppError(message: 'Trade 不存在'));
      }

      final reviewText = [
        if (input.finalExitReason != null &&
            input.finalExitReason!.trim().isNotEmpty)
          '最终退出原因: ${input.finalExitReason!.trim()}',
        if (input.reviewText != null && input.reviewText!.trim().isNotEmpty)
          input.reviewText!.trim(),
      ].join('\n\n');

      await _db.transaction(() async {
        await (_db.update(
          _db.trades,
        )..where((t) => t.id.equals(tradeId))).write(
          TradesCompanion(
            status: Value(TradeStatus.closed.dbValue),
            endTime: Value(input.endTime.toUtc().millisecondsSinceEpoch),
            summaryPnl: Value(input.summaryPnl),
            reviewText: Value(reviewText.isEmpty ? null : reviewText),
            reviewScoreExecution: Value(input.reviewScoreExecution),
            reviewScoreResult: Value(input.reviewScoreResult),
            reviewPlanFollowed: Value(input.reviewPlanFollowed?.dbValue),
            finalExitReason: Value(input.finalExitReason),
            updatedAt: Value(nowUtc().millisecondsSinceEpoch),
          ),
        );
        await _replaceReviewTags(tradeId, input.reviewErrorTags);
      });

      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '结束交易失败', cause: e));
    }
  }

  @override
  Future<Result<void>> setArchived(String tradeId, bool archived) async {
    try {
      final trade = await (_db.select(
        _db.trades,
      )..where((t) => t.id.equals(tradeId))).getSingleOrNull();
      if (trade == null) {
        return Result.failure(const AppError(message: 'Trade 不存在'));
      }
      final nextStatus = archived
          ? TradeStatus.archived
          : (trade.endTime == null ? TradeStatus.active : TradeStatus.closed);
      await (_db.update(_db.trades)..where((t) => t.id.equals(tradeId))).write(
        TradesCompanion(
          status: Value(nextStatus.dbValue),
          updatedAt: Value(nowUtc().millisecondsSinceEpoch),
        ),
      );
      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '更新归档状态失败', cause: e));
    }
  }

  domain.Trade _toDomain(
    Trade row,
    List<String> tags,
    List<String> reviewTags,
  ) {
    return domain.Trade(
      id: row.id,
      title: row.title,
      market: parseEnum(MarketType.values, row.market, MarketType.other),
      strategyType: parseEnum(
        StrategyType.values,
        row.strategyType,
        StrategyType.other,
      ),
      structureType: parseEnum(
        StructureType.values,
        row.structureType,
        StructureType.other,
      ),
      thesis: row.thesis,
      entryReason: row.entryReason,
      expectation: row.expectation,
      invalidationCondition: row.invalidationCondition,
      tags: tags,
      status: parseEnum(TradeStatus.values, row.status, TradeStatus.draft),
      startTime: DateTime.fromMillisecondsSinceEpoch(
        row.startTime,
        isUtc: true,
      ),
      endTime: row.endTime == null
          ? null
          : DateTime.fromMillisecondsSinceEpoch(row.endTime!, isUtc: true),
      summaryPnl: row.summaryPnl,
      reviewText: row.reviewText,
      reviewScoreExecution: row.reviewScoreExecution,
      reviewScoreResult: row.reviewScoreResult,
      reviewPlanFollowed: row.reviewPlanFollowed == null
          ? null
          : parseEnum(
              PlanFollowed.values,
              row.reviewPlanFollowed!,
              PlanFollowed.partial,
            ),
      reviewErrorTags: reviewTags,
      createdAt: DateTime.fromMillisecondsSinceEpoch(
        row.createdAt,
        isUtc: true,
      ),
      updatedAt: DateTime.fromMillisecondsSinceEpoch(
        row.updatedAt,
        isUtc: true,
      ),
    );
  }

  Future<Map<String, List<String>>> _loadTradeTagMap(
    List<String> tradeIds,
  ) async {
    if (tradeIds.isEmpty) {
      return {};
    }
    final rows = await (_db.select(_db.tradeTagRelations).join([
      innerJoin(_db.tags, _db.tags.id.equalsExp(_db.tradeTagRelations.tagId)),
    ])..where(_db.tradeTagRelations.tradeId.isIn(tradeIds))).get();

    final map = <String, List<String>>{};
    for (final row in rows) {
      final relation = row.readTable(_db.tradeTagRelations);
      final tag = row.readTable(_db.tags);
      map.putIfAbsent(relation.tradeId, () => []).add(tag.name);
    }
    return map;
  }

  Future<Map<String, List<String>>> _loadReviewTagMap(
    List<String> tradeIds,
  ) async {
    if (tradeIds.isEmpty) {
      return {};
    }
    final rows = await (_db.select(_db.reviewTagRelations).join([
      innerJoin(_db.tags, _db.tags.id.equalsExp(_db.reviewTagRelations.tagId)),
    ])..where(_db.reviewTagRelations.tradeId.isIn(tradeIds))).get();

    final map = <String, List<String>>{};
    for (final row in rows) {
      final relation = row.readTable(_db.reviewTagRelations);
      final tag = row.readTable(_db.tags);
      map.putIfAbsent(relation.tradeId, () => []).add(tag.name);
    }
    return map;
  }

  Future<void> _replaceTradeTags(String tradeId, List<String> tags) async {
    await (_db.delete(
      _db.tradeTagRelations,
    )..where((t) => t.tradeId.equals(tradeId))).go();
    final normalized = tags
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toSet()
        .toList();
    for (final tagName in normalized) {
      final tagId = await _getOrCreateTag(tagName, TagType.trade);
      await _db
          .into(_db.tradeTagRelations)
          .insert(
            TradeTagRelationsCompanion(
              tradeId: Value(tradeId),
              tagId: Value(tagId),
            ),
          );
    }
  }

  Future<void> _replaceReviewTags(String tradeId, List<String> tags) async {
    await (_db.delete(
      _db.reviewTagRelations,
    )..where((t) => t.tradeId.equals(tradeId))).go();
    final normalized = tags
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toSet()
        .toList();
    for (final tagName in normalized) {
      final tagId = await _getOrCreateTag(tagName, TagType.review);
      await _db
          .into(_db.reviewTagRelations)
          .insert(
            ReviewTagRelationsCompanion(
              tradeId: Value(tradeId),
              tagId: Value(tagId),
            ),
          );
    }
  }

  Future<String> _getOrCreateTag(String name, TagType type) async {
    final existing =
        await (_db.select(_db.tags)..where(
              (t) => t.name.equals(name) & t.tagType.equals(type.dbValue),
            ))
            .getSingleOrNull();
    if (existing != null) {
      return existing.id;
    }

    final id = _uuid.v4();
    await _db
        .into(_db.tags)
        .insert(
          TagsCompanion(
            id: Value(id),
            name: Value(name),
            tagType: Value(type.dbValue),
            createdAt: Value(nowUtc().millisecondsSinceEpoch),
          ),
        );
    return id;
  }
}
