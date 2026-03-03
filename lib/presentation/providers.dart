import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';

import '../data/db/app_database.dart';
import '../data/db/attachment_service.dart';
import '../data/repositories/event_repository_impl.dart';
import '../data/repositories/leg_repository_impl.dart';
import '../data/repositories/stats_repository_impl.dart';
import '../data/repositories/tag_repository_impl.dart';
import '../data/repositories/trade_repository_impl.dart';
import '../domain/repositories/event_repository.dart';
import '../domain/repositories/leg_repository.dart';
import '../domain/repositories/stats_repository.dart';
import '../domain/repositories/tag_repository.dart';
import '../domain/repositories/trade_repository.dart';
import '../domain/usecases/archive_trade.dart';
import '../domain/usecases/close_trade.dart';
import '../domain/usecases/create_event.dart';
import '../domain/usecases/create_trade.dart';
import '../domain/usecases/delete_event.dart';
import '../domain/usecases/delete_leg.dart';
import '../domain/usecases/get_stats_summary.dart';
import '../domain/usecases/get_trade_timeline.dart';
import '../domain/usecases/update_event.dart';
import '../domain/usecases/update_trade.dart';
import '../domain/usecases/upsert_leg.dart';
import 'router/app_router.dart';

final appDatabaseProvider = Provider<AppDatabase>(
  (_) => throw UnimplementedError(
    'appDatabaseProvider must be overridden in main.dart',
  ),
);

final uuidProvider = Provider((_) => const Uuid());

final attachmentServiceProvider = Provider((_) => const AttachmentService());

final tradeRepositoryProvider = Provider<TradeRepository>((ref) {
  return TradeRepositoryImpl(
    ref.watch(appDatabaseProvider),
    ref.watch(uuidProvider),
  );
});

final legRepositoryProvider = Provider<LegRepository>((ref) {
  return LegRepositoryImpl(ref.watch(appDatabaseProvider));
});

final eventRepositoryProvider = Provider<EventRepository>((ref) {
  return EventRepositoryImpl(
    ref.watch(appDatabaseProvider),
    ref.watch(attachmentServiceProvider),
  );
});

final tagRepositoryProvider = Provider<TagRepository>((ref) {
  return TagRepositoryImpl(ref.watch(appDatabaseProvider));
});

final statsRepositoryProvider = Provider<StatsRepository>((ref) {
  return StatsRepositoryImpl(ref.watch(appDatabaseProvider));
});

final createTradeUseCaseProvider = Provider((ref) {
  return CreateTrade(ref.watch(tradeRepositoryProvider));
});

final updateTradeUseCaseProvider = Provider((ref) {
  return UpdateTrade(ref.watch(tradeRepositoryProvider));
});

final closeTradeUseCaseProvider = Provider((ref) {
  return CloseTrade(ref.watch(tradeRepositoryProvider));
});

final archiveTradeUseCaseProvider = Provider((ref) {
  return ArchiveTrade(ref.watch(tradeRepositoryProvider));
});

final upsertLegUseCaseProvider = Provider((ref) {
  return UpsertLeg(ref.watch(legRepositoryProvider));
});

final deleteLegUseCaseProvider = Provider((ref) {
  return DeleteLeg(ref.watch(legRepositoryProvider));
});

final createEventUseCaseProvider = Provider((ref) {
  return CreateEvent(ref.watch(eventRepositoryProvider));
});

final updateEventUseCaseProvider = Provider((ref) {
  return UpdateEvent(ref.watch(eventRepositoryProvider));
});

final deleteEventUseCaseProvider = Provider((ref) {
  return DeleteEvent(ref.watch(eventRepositoryProvider));
});

final getTradeTimelineUseCaseProvider = Provider((ref) {
  return GetTradeTimeline(ref.watch(eventRepositoryProvider));
});

final getStatsSummaryUseCaseProvider = Provider((ref) {
  return GetStatsSummary(ref.watch(statsRepositoryProvider));
});

final appRouterProvider = Provider<GoRouter>((ref) => buildAppRouter());
