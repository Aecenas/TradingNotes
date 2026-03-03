import '../../core/result.dart';
import '../entities/leg.dart';

abstract class LegRepository {
  Future<Result<List<Leg>>> getLegsByTrade(String tradeId);

  Future<Result<Leg>> getLegById(String legId);

  Future<Result<void>> upsertLeg(Leg leg);

  Future<Result<void>> deleteLeg(String legId);
}
