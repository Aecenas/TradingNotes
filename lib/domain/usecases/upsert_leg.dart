import '../../core/result.dart';
import '../entities/leg.dart';
import '../repositories/leg_repository.dart';

class UpsertLeg {
  const UpsertLeg(this._legRepository);

  final LegRepository _legRepository;

  Future<Result<void>> call(Leg leg) => _legRepository.upsertLeg(leg);
}
