import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'db_key_service.dart';

part 'app_database.g.dart';

class Trades extends Table {
  TextColumn get id => text()();

  TextColumn get title => text()();

  TextColumn get market => text()();

  TextColumn get strategyType => text()();

  TextColumn get structureType => text()();

  TextColumn get thesis => text().nullable()();

  TextColumn get entryReason => text()();

  TextColumn get expectation => text().nullable()();

  TextColumn get invalidationCondition => text().nullable()();

  TextColumn get status => text()();

  IntColumn get startTime => integer()();

  IntColumn get endTime => integer().nullable()();

  RealColumn get summaryPnl => real().nullable()();

  TextColumn get reviewText => text().nullable()();

  IntColumn get reviewScoreExecution => integer().nullable()();

  IntColumn get reviewScoreResult => integer().nullable()();

  TextColumn get reviewPlanFollowed => text().nullable()();

  TextColumn get finalExitReason => text().nullable()();

  IntColumn get createdAt => integer()();

  IntColumn get updatedAt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class Legs extends Table {
  TextColumn get id => text()();

  TextColumn get tradeId =>
      text().references(Trades, #id, onDelete: KeyAction.cascade)();

  TextColumn get symbol => text()();

  TextColumn get name => text().nullable()();

  TextColumn get direction => text()();

  TextColumn get instrumentType => text()();

  RealColumn get leverage => real().nullable()();

  TextColumn get account => text().nullable()();

  TextColumn get currency => text().nullable()();

  RealColumn get initialPlanEntryPrice => real().nullable()();

  RealColumn get initialStopLoss => real().nullable()();

  RealColumn get initialRiskBudget => real().nullable()();

  RealColumn get initialAtr => real().nullable()();

  TextColumn get note => text().nullable()();

  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  IntColumn get createdAt => integer()();

  IntColumn get updatedAt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class Events extends Table {
  TextColumn get id => text()();

  TextColumn get tradeId =>
      text().references(Trades, #id, onDelete: KeyAction.cascade)();

  TextColumn get scopeType => text()();

  TextColumn get legId =>
      text().nullable().references(Legs, #id, onDelete: KeyAction.setNull)();

  TextColumn get eventType => text()();

  IntColumn get eventTime => integer()();

  TextColumn get title => text().nullable()();

  TextColumn get note => text()();

  RealColumn get price => real().nullable()();

  RealColumn get quantity => real().nullable()();

  RealColumn get notional => real().nullable()();

  RealColumn get riskDelta => real().nullable()();

  RealColumn get stopLossBefore => real().nullable()();

  RealColumn get stopLossAfter => real().nullable()();

  RealColumn get targetBefore => real().nullable()();

  RealColumn get targetAfter => real().nullable()();

  RealColumn get atr => real().nullable()();

  TextColumn get reason => text().nullable()();

  RealColumn get pnlRealized => real().nullable()();

  TextColumn get relatedMarketContext => text().nullable()();

  IntColumn get createdAt => integer()();

  IntColumn get updatedAt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class EventAttachments extends Table {
  TextColumn get id => text()();

  TextColumn get eventId =>
      text().references(Events, #id, onDelete: KeyAction.cascade)();

  TextColumn get relativePath => text()();

  TextColumn get originalName => text()();

  TextColumn get mimeType => text()();

  IntColumn get createdAt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}

class Tags extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  TextColumn get tagType => text()();

  IntColumn get createdAt => integer()();

  @override
  Set<Column<Object>>? get primaryKey => {id};

  @override
  List<Set<Column<Object>>>? get uniqueKeys => [
    {name, tagType},
  ];
}

class TradeTagRelations extends Table {
  TextColumn get tradeId =>
      text().references(Trades, #id, onDelete: KeyAction.cascade)();

  TextColumn get tagId =>
      text().references(Tags, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column<Object>>? get primaryKey => {tradeId, tagId};
}

class ReviewTagRelations extends Table {
  TextColumn get tradeId =>
      text().references(Trades, #id, onDelete: KeyAction.cascade)();

  TextColumn get tagId =>
      text().references(Tags, #id, onDelete: KeyAction.cascade)();

  @override
  Set<Column<Object>>? get primaryKey => {tradeId, tagId};
}

@DriftDatabase(
  tables: [
    Trades,
    Legs,
    Events,
    EventAttachments,
    Tags,
    TradeTagRelations,
    ReviewTagRelations,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase._(super.e);

  static Future<AppDatabase> open(DbKeyService keyService) async {
    final key = await keyService.getOrCreateKey();
    final dir = await getApplicationDocumentsDirectory();
    final dbFile = File(p.join(dir.path, 'trading_notes_v1.sqlite'));

    final executor = NativeDatabase.createInBackground(
      dbFile,
      setup: (rawDb) {
        rawDb.execute("PRAGMA key = '$key';");
        rawDb.execute('PRAGMA foreign_keys = ON;');
      },
    );

    return AppDatabase._(executor);
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
      await customStatement(
        'CREATE INDEX idx_trades_status ON trades(status);',
      );
      await customStatement(
        'CREATE INDEX idx_trades_start_time ON trades(start_time);',
      );
      await customStatement(
        'CREATE INDEX idx_legs_trade_id ON legs(trade_id);',
      );
      await customStatement(
        'CREATE INDEX idx_events_trade_id ON events(trade_id);',
      );
      await customStatement(
        'CREATE INDEX idx_events_leg_id ON events(leg_id);',
      );
      await customStatement(
        'CREATE INDEX idx_events_event_time ON events(event_time);',
      );
      await customStatement(
        'CREATE INDEX idx_event_attachments_event_id ON event_attachments(event_id);',
      );
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON;');
    },
  );
}
