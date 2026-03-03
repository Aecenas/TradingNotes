import '../../core/result.dart';
import '../entities/event.dart';

abstract class EventRepository {
  Future<Result<List<Event>>> getTradeTimeline(String tradeId);

  Future<Result<Event>> getEventById(String eventId);

  Future<Result<void>> upsertEvent(Event event);

  Future<Result<void>> deleteEvent(String eventId);
}
