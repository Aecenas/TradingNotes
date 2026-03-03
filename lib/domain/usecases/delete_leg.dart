import '../../core/result.dart';
import '../repositories/leg_repository.dart';

class DeleteLeg {
  const DeleteLeg(this._legRepository);

  final LegRepository _legRepository;

  Future<Result<void>> call(String legId) => _legRepository.deleteLeg(legId);
}
