import '../../core/result.dart';
import '../entities/event.dart';
import '../repositories/event_repository.dart';

class GetTradeTimeline {
  const GetTradeTimeline(this._eventRepository);

  final EventRepository _eventRepository;

  Future<Result<List<Event>>> call(String tradeId) {
    return _eventRepository.getTradeTimeline(tradeId);
  }
}
