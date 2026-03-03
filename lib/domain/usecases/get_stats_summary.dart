import '../../core/result.dart';
import '../entities/stats_summary.dart';
import '../repositories/stats_repository.dart';

class GetStatsSummary {
  const GetStatsSummary(this._statsRepository);

  final StatsRepository _statsRepository;

  Future<Result<StatsSummary>> call() => _statsRepository.getStatsSummary();
}
