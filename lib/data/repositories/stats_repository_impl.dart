import '../../core/app_error.dart';
import '../../core/result.dart';
import '../../domain/entities/stats_summary.dart';
import '../../domain/repositories/stats_repository.dart';
import '../db/app_database.dart';

class StatsRepositoryImpl implements StatsRepository {
  StatsRepositoryImpl(this._db);

  final AppDatabase _db;

  @override
  Future<Result<StatsSummary>> getStatsSummary() async {
    try {
      final totalTrades = await _singleInt('SELECT COUNT(*) AS c FROM trades');
      final closedTrades = await _singleInt(
        "SELECT COUNT(*) AS c FROM trades WHERE status IN ('closed', 'archived')",
      );
      final winningTrades = await _singleInt(
        "SELECT COUNT(*) AS c FROM trades WHERE status IN ('closed', 'archived') AND summary_pnl > 0",
      );
      final losingTrades = await _singleInt(
        "SELECT COUNT(*) AS c FROM trades WHERE status IN ('closed', 'archived') AND summary_pnl < 0",
      );

      final marketCounts = await _groupCount(
        'SELECT market AS k, COUNT(*) AS c FROM trades GROUP BY market ORDER BY c DESC',
      );
      final strategyCounts = await _groupCount(
        'SELECT strategy_type AS k, COUNT(*) AS c FROM trades GROUP BY strategy_type ORDER BY c DESC',
      );
      final reviewTagFrequency = await _groupCount(
        'SELECT tags.name AS k, COUNT(*) AS c FROM review_tag_relations r '
        'JOIN tags ON tags.id = r.tag_id '
        'GROUP BY tags.name ORDER BY c DESC',
      );

      return Result.success(
        StatsSummary(
          totalTrades: totalTrades,
          closedTrades: closedTrades,
          winningTrades: winningTrades,
          losingTrades: losingTrades,
          marketCounts: marketCounts,
          strategyCounts: strategyCounts,
          reviewTagFrequency: reviewTagFrequency,
        ),
      );
    } catch (e) {
      return Result.failure(AppError(message: '获取统计失败', cause: e));
    }
  }

  Future<int> _singleInt(String sql) async {
    final result = await _db.customSelect(sql).getSingle();
    return result.read<int>('c');
  }

  Future<Map<String, int>> _groupCount(String sql) async {
    final rows = await _db.customSelect(sql).get();
    final map = <String, int>{};
    for (final row in rows) {
      final key = row.read<String>('k');
      final count = row.read<int>('c');
      map[key] = count;
    }
    return map;
  }
}
