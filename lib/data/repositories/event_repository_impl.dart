import 'package:drift/drift.dart';

import '../../core/app_error.dart';
import '../../core/enums.dart';
import '../../core/result.dart';
import '../../domain/entities/event.dart' as domain;
import '../../domain/repositories/event_repository.dart';
import '../db/app_database.dart';
import '../db/attachment_service.dart';

class EventRepositoryImpl implements EventRepository {
  EventRepositoryImpl(this._db, this._attachmentService);

  final AppDatabase _db;
  final AttachmentService _attachmentService;

  @override
  Future<Result<List<domain.Event>>> getTradeTimeline(String tradeId) async {
    try {
      final rows =
          await (_db.select(_db.events)
                ..where((e) => e.tradeId.equals(tradeId))
                ..orderBy([
                  (e) => OrderingTerm(
                    expression: e.eventTime,
                    mode: OrderingMode.asc,
                  ),
                  (e) => OrderingTerm(
                    expression: e.createdAt,
                    mode: OrderingMode.asc,
                  ),
                ]))
              .get();
      final attachments = await _loadAttachmentMap(rows.map((e) => e.id));
      return Result.success(
        rows
            .map((event) => _toDomain(event, attachments[event.id] ?? const []))
            .toList(),
      );
    } catch (e) {
      return Result.failure(AppError(message: '获取时间线失败', cause: e));
    }
  }

  @override
  Future<Result<domain.Event>> getEventById(String eventId) async {
    try {
      final row = await (_db.select(
        _db.events,
      )..where((e) => e.id.equals(eventId))).getSingleOrNull();
      if (row == null) {
        return Result.failure(const AppError(message: 'Event 不存在'));
      }
      final attachments = await _loadAttachmentMap([eventId]);
      return Result.success(_toDomain(row, attachments[eventId] ?? const []));
    } catch (e) {
      return Result.failure(AppError(message: '获取 Event 失败', cause: e));
    }
  }

  @override
  Future<Result<void>> upsertEvent(domain.Event event) async {
    try {
      if (event.scopeType == ScopeType.leg &&
          (event.legId == null || event.legId!.isEmpty)) {
        return Result.failure(const AppError(message: 'Leg 级事件必须绑定 leg_id'));
      }
      if (event.note.trim().isEmpty) {
        return Result.failure(const AppError(message: '事件备注不能为空'));
      }

      final oldAttachments = await (_db.select(
        _db.eventAttachments,
      )..where((a) => a.eventId.equals(event.id))).get();
      final oldPaths = oldAttachments.map((e) => e.relativePath).toSet();
      final newPaths = event.attachments.map((e) => e.relativePath).toSet();
      final toDeletePaths = oldPaths.difference(newPaths);

      await _db.transaction(() async {
        await _db
            .into(_db.events)
            .insertOnConflictUpdate(
              EventsCompanion(
                id: Value(event.id),
                tradeId: Value(event.tradeId),
                scopeType: Value(event.scopeType.dbValue),
                legId: Value(event.legId),
                eventType: Value(event.eventType.dbValue),
                eventTime: Value(
                  event.eventTime.toUtc().millisecondsSinceEpoch,
                ),
                title: Value(event.title),
                note: Value(event.note),
                price: Value(event.price),
                quantity: Value(event.quantity),
                notional: Value(event.notional),
                riskDelta: Value(event.riskDelta),
                stopLossBefore: Value(event.stopLossBefore),
                stopLossAfter: Value(event.stopLossAfter),
                targetBefore: Value(event.targetBefore),
                targetAfter: Value(event.targetAfter),
                atr: Value(event.atr),
                reason: Value(event.reason),
                pnlRealized: Value(event.pnlRealized),
                relatedMarketContext: Value(event.relatedMarketContext),
                createdAt: Value(
                  event.createdAt.toUtc().millisecondsSinceEpoch,
                ),
                updatedAt: Value(
                  event.updatedAt.toUtc().millisecondsSinceEpoch,
                ),
              ),
            );

        await (_db.delete(
          _db.eventAttachments,
        )..where((a) => a.eventId.equals(event.id))).go();
        for (final attachment in event.attachments) {
          await _db
              .into(_db.eventAttachments)
              .insert(
                EventAttachmentsCompanion(
                  id: Value(attachment.id),
                  eventId: Value(event.id),
                  relativePath: Value(attachment.relativePath),
                  originalName: Value(attachment.originalName),
                  mimeType: Value(attachment.mimeType),
                  createdAt: Value(
                    attachment.createdAt.toUtc().millisecondsSinceEpoch,
                  ),
                ),
              );
        }
      });

      await _attachmentService.deleteMany(toDeletePaths);
      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '保存 Event 失败', cause: e));
    }
  }

  @override
  Future<Result<void>> deleteEvent(String eventId) async {
    try {
      final attachments = await (_db.select(
        _db.eventAttachments,
      )..where((a) => a.eventId.equals(eventId))).get();
      await (_db.delete(_db.events)..where((e) => e.id.equals(eventId))).go();
      await _attachmentService.deleteMany(
        attachments.map((a) => a.relativePath),
      );
      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '删除 Event 失败', cause: e));
    }
  }

  Future<Map<String, List<EventAttachment>>> _loadAttachmentMap(
    Iterable<String> eventIds,
  ) async {
    final ids = eventIds.toList();
    if (ids.isEmpty) {
      return {};
    }

    final rows =
        await (_db.select(_db.eventAttachments)
              ..where((a) => a.eventId.isIn(ids))
              ..orderBy([
                (a) => OrderingTerm(
                  expression: a.createdAt,
                  mode: OrderingMode.asc,
                ),
              ]))
            .get();

    final result = <String, List<EventAttachment>>{};
    for (final row in rows) {
      result.putIfAbsent(row.eventId, () => []).add(row);
    }
    return result;
  }

  domain.Event _toDomain(Event row, List<EventAttachment> attachments) {
    return domain.Event(
      id: row.id,
      tradeId: row.tradeId,
      scopeType: parseEnum(ScopeType.values, row.scopeType, ScopeType.trade),
      legId: row.legId,
      eventType: parseEnum(
        EventType.values,
        row.eventType,
        EventType.generalNote,
      ),
      eventTime: DateTime.fromMillisecondsSinceEpoch(
        row.eventTime,
        isUtc: true,
      ),
      title: row.title,
      note: row.note,
      attachments: attachments
          .map(
            (a) => domain.EventAttachment(
              id: a.id,
              eventId: a.eventId,
              relativePath: a.relativePath,
              originalName: a.originalName,
              mimeType: a.mimeType,
              createdAt: DateTime.fromMillisecondsSinceEpoch(
                a.createdAt,
                isUtc: true,
              ),
            ),
          )
          .toList(),
      price: row.price,
      quantity: row.quantity,
      notional: row.notional,
      riskDelta: row.riskDelta,
      stopLossBefore: row.stopLossBefore,
      stopLossAfter: row.stopLossAfter,
      targetBefore: row.targetBefore,
      targetAfter: row.targetAfter,
      atr: row.atr,
      reason: row.reason,
      pnlRealized: row.pnlRealized,
      relatedMarketContext: row.relatedMarketContext,
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
}
