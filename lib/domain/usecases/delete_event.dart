import '../../core/result.dart';
import '../repositories/event_repository.dart';

class DeleteEvent {
  const DeleteEvent(this._eventRepository);

  final EventRepository _eventRepository;

  Future<Result<void>> call(String eventId) =>
      _eventRepository.deleteEvent(eventId);
}
