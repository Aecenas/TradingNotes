import 'package:drift/drift.dart';

import '../../core/app_error.dart';
import '../../core/enums.dart';
import '../../core/result.dart';
import '../../domain/entities/leg.dart' as domain;
import '../../domain/repositories/leg_repository.dart';
import '../db/app_database.dart';

class LegRepositoryImpl implements LegRepository {
  LegRepositoryImpl(this._db);

  final AppDatabase _db;

  @override
  Future<Result<List<domain.Leg>>> getLegsByTrade(String tradeId) async {
    try {
      final rows =
          await (_db.select(_db.legs)
                ..where((l) => l.tradeId.equals(tradeId))
                ..orderBy([
                  (l) => OrderingTerm(
                    expression: l.sortOrder,
                    mode: OrderingMode.asc,
                  ),
                ]))
              .get();
      return Result.success(rows.map(_toDomain).toList());
    } catch (e) {
      return Result.failure(AppError(message: '获取 Leg 列表失败', cause: e));
    }
  }

  @override
  Future<Result<domain.Leg>> getLegById(String legId) async {
    try {
      final row = await (_db.select(
        _db.legs,
      )..where((l) => l.id.equals(legId))).getSingleOrNull();
      if (row == null) {
        return Result.failure(const AppError(message: 'Leg 不存在'));
      }
      return Result.success(_toDomain(row));
    } catch (e) {
      return Result.failure(AppError(message: '获取 Leg 失败', cause: e));
    }
  }

  @override
  Future<Result<void>> upsertLeg(domain.Leg leg) async {
    try {
      await _db
          .into(_db.legs)
          .insertOnConflictUpdate(
            LegsCompanion(
              id: Value(leg.id),
              tradeId: Value(leg.tradeId),
              symbol: Value(leg.symbol),
              name: Value(leg.name),
              direction: Value(leg.direction.dbValue),
              instrumentType: Value(leg.instrumentType.dbValue),
              leverage: Value(leg.leverage),
              account: Value(leg.account),
              currency: Value(leg.currency),
              initialPlanEntryPrice: Value(leg.initialPlanEntryPrice),
              initialStopLoss: Value(leg.initialStopLoss),
              initialRiskBudget: Value(leg.initialRiskBudget),
              initialAtr: Value(leg.initialAtr),
              note: Value(leg.note),
              sortOrder: Value(leg.sortOrder),
              createdAt: Value(leg.createdAt.toUtc().millisecondsSinceEpoch),
              updatedAt: Value(leg.updatedAt.toUtc().millisecondsSinceEpoch),
            ),
          );
      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '保存 Leg 失败', cause: e));
    }
  }

  @override
  Future<Result<void>> deleteLeg(String legId) async {
    try {
      final countExp = _db.events.id.count();
      final query = _db.selectOnly(_db.events)
        ..addColumns([countExp])
        ..where(_db.events.legId.equals(legId));
      final count = await query.map((r) => r.read(countExp) ?? 0).getSingle();
      if (count > 0) {
        return Result.failure(
          const AppError(message: '该 Leg 已有关联事件，无法直接删除。请先删除或解绑事件。'),
        );
      }

      await (_db.delete(_db.legs)..where((l) => l.id.equals(legId))).go();
      return Result.success(null);
    } catch (e) {
      return Result.failure(AppError(message: '删除 Leg 失败', cause: e));
    }
  }

  domain.Leg _toDomain(Leg row) {
    return domain.Leg(
      id: row.id,
      tradeId: row.tradeId,
      symbol: row.symbol,
      name: row.name,
      direction: parseEnum(Direction.values, row.direction, Direction.long),
      instrumentType: parseEnum(
        InstrumentType.values,
        row.instrumentType,
        InstrumentType.other,
      ),
      leverage: row.leverage,
      account: row.account,
      currency: row.currency,
      initialPlanEntryPrice: row.initialPlanEntryPrice,
      initialStopLoss: row.initialStopLoss,
      initialRiskBudget: row.initialRiskBudget,
      initialAtr: row.initialAtr,
      note: row.note,
      sortOrder: row.sortOrder,
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
