import '../../core/result.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';

class UpdateEvent {
  const UpdateEvent(this._eventRepository);

  final EventRepository _eventRepository;

  Future<Result<void>> call(Event event) => _eventRepository.upsertEvent(event);
}
