import '../../core/result.dart';
import '../entities/stats_summary.dart';

abstract class StatsRepository {
  Future<Result<StatsSummary>> getStatsSummary();
}
