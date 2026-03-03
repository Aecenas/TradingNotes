// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TradesTable extends Trades with TableInfo<$TradesTable, Trade> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TradesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _marketMeta = const VerificationMeta('market');
  @override
  late final GeneratedColumn<String> market = GeneratedColumn<String>(
    'market',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _strategyTypeMeta = const VerificationMeta(
    'strategyType',
  );
  @override
  late final GeneratedColumn<String> strategyType = GeneratedColumn<String>(
    'strategy_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _structureTypeMeta = const VerificationMeta(
    'structureType',
  );
  @override
  late final GeneratedColumn<String> structureType = GeneratedColumn<String>(
    'structure_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _thesisMeta = const VerificationMeta('thesis');
  @override
  late final GeneratedColumn<String> thesis = GeneratedColumn<String>(
    'thesis',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _entryReasonMeta = const VerificationMeta(
    'entryReason',
  );
  @override
  late final GeneratedColumn<String> entryReason = GeneratedColumn<String>(
    'entry_reason',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _expectationMeta = const VerificationMeta(
    'expectation',
  );
  @override
  late final GeneratedColumn<String> expectation = GeneratedColumn<String>(
    'expectation',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _invalidationConditionMeta =
      const VerificationMeta('invalidationCondition');
  @override
  late final GeneratedColumn<String> invalidationCondition =
      GeneratedColumn<String>(
        'invalidation_condition',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _startTimeMeta = const VerificationMeta(
    'startTime',
  );
  @override
  late final GeneratedColumn<int> startTime = GeneratedColumn<int>(
    'start_time',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endTimeMeta = const VerificationMeta(
    'endTime',
  );
  @override
  late final GeneratedColumn<int> endTime = GeneratedColumn<int>(
    'end_time',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _summaryPnlMeta = const VerificationMeta(
    'summaryPnl',
  );
  @override
  late final GeneratedColumn<double> summaryPnl = GeneratedColumn<double>(
    'summary_pnl',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reviewTextMeta = const VerificationMeta(
    'reviewText',
  );
  @override
  late final GeneratedColumn<String> reviewText = GeneratedColumn<String>(
    'review_text',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reviewScoreExecutionMeta =
      const VerificationMeta('reviewScoreExecution');
  @override
  late final GeneratedColumn<int> reviewScoreExecution = GeneratedColumn<int>(
    'review_score_execution',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reviewScoreResultMeta = const VerificationMeta(
    'reviewScoreResult',
  );
  @override
  late final GeneratedColumn<int> reviewScoreResult = GeneratedColumn<int>(
    'review_score_result',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reviewPlanFollowedMeta =
      const VerificationMeta('reviewPlanFollowed');
  @override
  late final GeneratedColumn<String> reviewPlanFollowed =
      GeneratedColumn<String>(
        'review_plan_followed',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _finalExitReasonMeta = const VerificationMeta(
    'finalExitReason',
  );
  @override
  late final GeneratedColumn<String> finalExitReason = GeneratedColumn<String>(
    'final_exit_reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    market,
    strategyType,
    structureType,
    thesis,
    entryReason,
    expectation,
    invalidationCondition,
    status,
    startTime,
    endTime,
    summaryPnl,
    reviewText,
    reviewScoreExecution,
    reviewScoreResult,
    reviewPlanFollowed,
    finalExitReason,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trades';
  @override
  VerificationContext validateIntegrity(
    Insertable<Trade> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('market')) {
      context.handle(
        _marketMeta,
        market.isAcceptableOrUnknown(data['market']!, _marketMeta),
      );
    } else if (isInserting) {
      context.missing(_marketMeta);
    }
    if (data.containsKey('strategy_type')) {
      context.handle(
        _strategyTypeMeta,
        strategyType.isAcceptableOrUnknown(
          data['strategy_type']!,
          _strategyTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_strategyTypeMeta);
    }
    if (data.containsKey('structure_type')) {
      context.handle(
        _structureTypeMeta,
        structureType.isAcceptableOrUnknown(
          data['structure_type']!,
          _structureTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_structureTypeMeta);
    }
    if (data.containsKey('thesis')) {
      context.handle(
        _thesisMeta,
        thesis.isAcceptableOrUnknown(data['thesis']!, _thesisMeta),
      );
    }
    if (data.containsKey('entry_reason')) {
      context.handle(
        _entryReasonMeta,
        entryReason.isAcceptableOrUnknown(
          data['entry_reason']!,
          _entryReasonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_entryReasonMeta);
    }
    if (data.containsKey('expectation')) {
      context.handle(
        _expectationMeta,
        expectation.isAcceptableOrUnknown(
          data['expectation']!,
          _expectationMeta,
        ),
      );
    }
    if (data.containsKey('invalidation_condition')) {
      context.handle(
        _invalidationConditionMeta,
        invalidationCondition.isAcceptableOrUnknown(
          data['invalidation_condition']!,
          _invalidationConditionMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('start_time')) {
      context.handle(
        _startTimeMeta,
        startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(
        _endTimeMeta,
        endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta),
      );
    }
    if (data.containsKey('summary_pnl')) {
      context.handle(
        _summaryPnlMeta,
        summaryPnl.isAcceptableOrUnknown(data['summary_pnl']!, _summaryPnlMeta),
      );
    }
    if (data.containsKey('review_text')) {
      context.handle(
        _reviewTextMeta,
        reviewText.isAcceptableOrUnknown(data['review_text']!, _reviewTextMeta),
      );
    }
    if (data.containsKey('review_score_execution')) {
      context.handle(
        _reviewScoreExecutionMeta,
        reviewScoreExecution.isAcceptableOrUnknown(
          data['review_score_execution']!,
          _reviewScoreExecutionMeta,
        ),
      );
    }
    if (data.containsKey('review_score_result')) {
      context.handle(
        _reviewScoreResultMeta,
        reviewScoreResult.isAcceptableOrUnknown(
          data['review_score_result']!,
          _reviewScoreResultMeta,
        ),
      );
    }
    if (data.containsKey('review_plan_followed')) {
      context.handle(
        _reviewPlanFollowedMeta,
        reviewPlanFollowed.isAcceptableOrUnknown(
          data['review_plan_followed']!,
          _reviewPlanFollowedMeta,
        ),
      );
    }
    if (data.containsKey('final_exit_reason')) {
      context.handle(
        _finalExitReasonMeta,
        finalExitReason.isAcceptableOrUnknown(
          data['final_exit_reason']!,
          _finalExitReasonMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Trade map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Trade(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      market: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}market'],
      )!,
      strategyType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}strategy_type'],
      )!,
      structureType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}structure_type'],
      )!,
      thesis: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thesis'],
      ),
      entryReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}entry_reason'],
      )!,
      expectation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}expectation'],
      ),
      invalidationCondition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}invalidation_condition'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      startTime: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}start_time'],
      )!,
      endTime: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}end_time'],
      ),
      summaryPnl: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}summary_pnl'],
      ),
      reviewText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}review_text'],
      ),
      reviewScoreExecution: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}review_score_execution'],
      ),
      reviewScoreResult: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}review_score_result'],
      ),
      reviewPlanFollowed: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}review_plan_followed'],
      ),
      finalExitReason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}final_exit_reason'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $TradesTable createAlias(String alias) {
    return $TradesTable(attachedDatabase, alias);
  }
}

class Trade extends DataClass implements Insertable<Trade> {
  final String id;
  final String title;
  final String market;
  final String strategyType;
  final String structureType;
  final String? thesis;
  final String entryReason;
  final String? expectation;
  final String? invalidationCondition;
  final String status;
  final int startTime;
  final int? endTime;
  final double? summaryPnl;
  final String? reviewText;
  final int? reviewScoreExecution;
  final int? reviewScoreResult;
  final String? reviewPlanFollowed;
  final String? finalExitReason;
  final int createdAt;
  final int updatedAt;
  const Trade({
    required this.id,
    required this.title,
    required this.market,
    required this.strategyType,
    required this.structureType,
    this.thesis,
    required this.entryReason,
    this.expectation,
    this.invalidationCondition,
    required this.status,
    required this.startTime,
    this.endTime,
    this.summaryPnl,
    this.reviewText,
    this.reviewScoreExecution,
    this.reviewScoreResult,
    this.reviewPlanFollowed,
    this.finalExitReason,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['market'] = Variable<String>(market);
    map['strategy_type'] = Variable<String>(strategyType);
    map['structure_type'] = Variable<String>(structureType);
    if (!nullToAbsent || thesis != null) {
      map['thesis'] = Variable<String>(thesis);
    }
    map['entry_reason'] = Variable<String>(entryReason);
    if (!nullToAbsent || expectation != null) {
      map['expectation'] = Variable<String>(expectation);
    }
    if (!nullToAbsent || invalidationCondition != null) {
      map['invalidation_condition'] = Variable<String>(invalidationCondition);
    }
    map['status'] = Variable<String>(status);
    map['start_time'] = Variable<int>(startTime);
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<int>(endTime);
    }
    if (!nullToAbsent || summaryPnl != null) {
      map['summary_pnl'] = Variable<double>(summaryPnl);
    }
    if (!nullToAbsent || reviewText != null) {
      map['review_text'] = Variable<String>(reviewText);
    }
    if (!nullToAbsent || reviewScoreExecution != null) {
      map['review_score_execution'] = Variable<int>(reviewScoreExecution);
    }
    if (!nullToAbsent || reviewScoreResult != null) {
      map['review_score_result'] = Variable<int>(reviewScoreResult);
    }
    if (!nullToAbsent || reviewPlanFollowed != null) {
      map['review_plan_followed'] = Variable<String>(reviewPlanFollowed);
    }
    if (!nullToAbsent || finalExitReason != null) {
      map['final_exit_reason'] = Variable<String>(finalExitReason);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  TradesCompanion toCompanion(bool nullToAbsent) {
    return TradesCompanion(
      id: Value(id),
      title: Value(title),
      market: Value(market),
      strategyType: Value(strategyType),
      structureType: Value(structureType),
      thesis: thesis == null && nullToAbsent
          ? const Value.absent()
          : Value(thesis),
      entryReason: Value(entryReason),
      expectation: expectation == null && nullToAbsent
          ? const Value.absent()
          : Value(expectation),
      invalidationCondition: invalidationCondition == null && nullToAbsent
          ? const Value.absent()
          : Value(invalidationCondition),
      status: Value(status),
      startTime: Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      summaryPnl: summaryPnl == null && nullToAbsent
          ? const Value.absent()
          : Value(summaryPnl),
      reviewText: reviewText == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewText),
      reviewScoreExecution: reviewScoreExecution == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewScoreExecution),
      reviewScoreResult: reviewScoreResult == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewScoreResult),
      reviewPlanFollowed: reviewPlanFollowed == null && nullToAbsent
          ? const Value.absent()
          : Value(reviewPlanFollowed),
      finalExitReason: finalExitReason == null && nullToAbsent
          ? const Value.absent()
          : Value(finalExitReason),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Trade.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Trade(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      market: serializer.fromJson<String>(json['market']),
      strategyType: serializer.fromJson<String>(json['strategyType']),
      structureType: serializer.fromJson<String>(json['structureType']),
      thesis: serializer.fromJson<String?>(json['thesis']),
      entryReason: serializer.fromJson<String>(json['entryReason']),
      expectation: serializer.fromJson<String?>(json['expectation']),
      invalidationCondition: serializer.fromJson<String?>(
        json['invalidationCondition'],
      ),
      status: serializer.fromJson<String>(json['status']),
      startTime: serializer.fromJson<int>(json['startTime']),
      endTime: serializer.fromJson<int?>(json['endTime']),
      summaryPnl: serializer.fromJson<double?>(json['summaryPnl']),
      reviewText: serializer.fromJson<String?>(json['reviewText']),
      reviewScoreExecution: serializer.fromJson<int?>(
        json['reviewScoreExecution'],
      ),
      reviewScoreResult: serializer.fromJson<int?>(json['reviewScoreResult']),
      reviewPlanFollowed: serializer.fromJson<String?>(
        json['reviewPlanFollowed'],
      ),
      finalExitReason: serializer.fromJson<String?>(json['finalExitReason']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'market': serializer.toJson<String>(market),
      'strategyType': serializer.toJson<String>(strategyType),
      'structureType': serializer.toJson<String>(structureType),
      'thesis': serializer.toJson<String?>(thesis),
      'entryReason': serializer.toJson<String>(entryReason),
      'expectation': serializer.toJson<String?>(expectation),
      'invalidationCondition': serializer.toJson<String?>(
        invalidationCondition,
      ),
      'status': serializer.toJson<String>(status),
      'startTime': serializer.toJson<int>(startTime),
      'endTime': serializer.toJson<int?>(endTime),
      'summaryPnl': serializer.toJson<double?>(summaryPnl),
      'reviewText': serializer.toJson<String?>(reviewText),
      'reviewScoreExecution': serializer.toJson<int?>(reviewScoreExecution),
      'reviewScoreResult': serializer.toJson<int?>(reviewScoreResult),
      'reviewPlanFollowed': serializer.toJson<String?>(reviewPlanFollowed),
      'finalExitReason': serializer.toJson<String?>(finalExitReason),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  Trade copyWith({
    String? id,
    String? title,
    String? market,
    String? strategyType,
    String? structureType,
    Value<String?> thesis = const Value.absent(),
    String? entryReason,
    Value<String?> expectation = const Value.absent(),
    Value<String?> invalidationCondition = const Value.absent(),
    String? status,
    int? startTime,
    Value<int?> endTime = const Value.absent(),
    Value<double?> summaryPnl = const Value.absent(),
    Value<String?> reviewText = const Value.absent(),
    Value<int?> reviewScoreExecution = const Value.absent(),
    Value<int?> reviewScoreResult = const Value.absent(),
    Value<String?> reviewPlanFollowed = const Value.absent(),
    Value<String?> finalExitReason = const Value.absent(),
    int? createdAt,
    int? updatedAt,
  }) => Trade(
    id: id ?? this.id,
    title: title ?? this.title,
    market: market ?? this.market,
    strategyType: strategyType ?? this.strategyType,
    structureType: structureType ?? this.structureType,
    thesis: thesis.present ? thesis.value : this.thesis,
    entryReason: entryReason ?? this.entryReason,
    expectation: expectation.present ? expectation.value : this.expectation,
    invalidationCondition: invalidationCondition.present
        ? invalidationCondition.value
        : this.invalidationCondition,
    status: status ?? this.status,
    startTime: startTime ?? this.startTime,
    endTime: endTime.present ? endTime.value : this.endTime,
    summaryPnl: summaryPnl.present ? summaryPnl.value : this.summaryPnl,
    reviewText: reviewText.present ? reviewText.value : this.reviewText,
    reviewScoreExecution: reviewScoreExecution.present
        ? reviewScoreExecution.value
        : this.reviewScoreExecution,
    reviewScoreResult: reviewScoreResult.present
        ? reviewScoreResult.value
        : this.reviewScoreResult,
    reviewPlanFollowed: reviewPlanFollowed.present
        ? reviewPlanFollowed.value
        : this.reviewPlanFollowed,
    finalExitReason: finalExitReason.present
        ? finalExitReason.value
        : this.finalExitReason,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Trade copyWithCompanion(TradesCompanion data) {
    return Trade(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      market: data.market.present ? data.market.value : this.market,
      strategyType: data.strategyType.present
          ? data.strategyType.value
          : this.strategyType,
      structureType: data.structureType.present
          ? data.structureType.value
          : this.structureType,
      thesis: data.thesis.present ? data.thesis.value : this.thesis,
      entryReason: data.entryReason.present
          ? data.entryReason.value
          : this.entryReason,
      expectation: data.expectation.present
          ? data.expectation.value
          : this.expectation,
      invalidationCondition: data.invalidationCondition.present
          ? data.invalidationCondition.value
          : this.invalidationCondition,
      status: data.status.present ? data.status.value : this.status,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      summaryPnl: data.summaryPnl.present
          ? data.summaryPnl.value
          : this.summaryPnl,
      reviewText: data.reviewText.present
          ? data.reviewText.value
          : this.reviewText,
      reviewScoreExecution: data.reviewScoreExecution.present
          ? data.reviewScoreExecution.value
          : this.reviewScoreExecution,
      reviewScoreResult: data.reviewScoreResult.present
          ? data.reviewScoreResult.value
          : this.reviewScoreResult,
      reviewPlanFollowed: data.reviewPlanFollowed.present
          ? data.reviewPlanFollowed.value
          : this.reviewPlanFollowed,
      finalExitReason: data.finalExitReason.present
          ? data.finalExitReason.value
          : this.finalExitReason,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Trade(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('market: $market, ')
          ..write('strategyType: $strategyType, ')
          ..write('structureType: $structureType, ')
          ..write('thesis: $thesis, ')
          ..write('entryReason: $entryReason, ')
          ..write('expectation: $expectation, ')
          ..write('invalidationCondition: $invalidationCondition, ')
          ..write('status: $status, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('summaryPnl: $summaryPnl, ')
          ..write('reviewText: $reviewText, ')
          ..write('reviewScoreExecution: $reviewScoreExecution, ')
          ..write('reviewScoreResult: $reviewScoreResult, ')
          ..write('reviewPlanFollowed: $reviewPlanFollowed, ')
          ..write('finalExitReason: $finalExitReason, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    market,
    strategyType,
    structureType,
    thesis,
    entryReason,
    expectation,
    invalidationCondition,
    status,
    startTime,
    endTime,
    summaryPnl,
    reviewText,
    reviewScoreExecution,
    reviewScoreResult,
    reviewPlanFollowed,
    finalExitReason,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Trade &&
          other.id == this.id &&
          other.title == this.title &&
          other.market == this.market &&
          other.strategyType == this.strategyType &&
          other.structureType == this.structureType &&
          other.thesis == this.thesis &&
          other.entryReason == this.entryReason &&
          other.expectation == this.expectation &&
          other.invalidationCondition == this.invalidationCondition &&
          other.status == this.status &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.summaryPnl == this.summaryPnl &&
          other.reviewText == this.reviewText &&
          other.reviewScoreExecution == this.reviewScoreExecution &&
          other.reviewScoreResult == this.reviewScoreResult &&
          other.reviewPlanFollowed == this.reviewPlanFollowed &&
          other.finalExitReason == this.finalExitReason &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class TradesCompanion extends UpdateCompanion<Trade> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> market;
  final Value<String> strategyType;
  final Value<String> structureType;
  final Value<String?> thesis;
  final Value<String> entryReason;
  final Value<String?> expectation;
  final Value<String?> invalidationCondition;
  final Value<String> status;
  final Value<int> startTime;
  final Value<int?> endTime;
  final Value<double?> summaryPnl;
  final Value<String?> reviewText;
  final Value<int?> reviewScoreExecution;
  final Value<int?> reviewScoreResult;
  final Value<String?> reviewPlanFollowed;
  final Value<String?> finalExitReason;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const TradesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.market = const Value.absent(),
    this.strategyType = const Value.absent(),
    this.structureType = const Value.absent(),
    this.thesis = const Value.absent(),
    this.entryReason = const Value.absent(),
    this.expectation = const Value.absent(),
    this.invalidationCondition = const Value.absent(),
    this.status = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.summaryPnl = const Value.absent(),
    this.reviewText = const Value.absent(),
    this.reviewScoreExecution = const Value.absent(),
    this.reviewScoreResult = const Value.absent(),
    this.reviewPlanFollowed = const Value.absent(),
    this.finalExitReason = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TradesCompanion.insert({
    required String id,
    required String title,
    required String market,
    required String strategyType,
    required String structureType,
    this.thesis = const Value.absent(),
    required String entryReason,
    this.expectation = const Value.absent(),
    this.invalidationCondition = const Value.absent(),
    required String status,
    required int startTime,
    this.endTime = const Value.absent(),
    this.summaryPnl = const Value.absent(),
    this.reviewText = const Value.absent(),
    this.reviewScoreExecution = const Value.absent(),
    this.reviewScoreResult = const Value.absent(),
    this.reviewPlanFollowed = const Value.absent(),
    this.finalExitReason = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       market = Value(market),
       strategyType = Value(strategyType),
       structureType = Value(structureType),
       entryReason = Value(entryReason),
       status = Value(status),
       startTime = Value(startTime),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Trade> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? market,
    Expression<String>? strategyType,
    Expression<String>? structureType,
    Expression<String>? thesis,
    Expression<String>? entryReason,
    Expression<String>? expectation,
    Expression<String>? invalidationCondition,
    Expression<String>? status,
    Expression<int>? startTime,
    Expression<int>? endTime,
    Expression<double>? summaryPnl,
    Expression<String>? reviewText,
    Expression<int>? reviewScoreExecution,
    Expression<int>? reviewScoreResult,
    Expression<String>? reviewPlanFollowed,
    Expression<String>? finalExitReason,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (market != null) 'market': market,
      if (strategyType != null) 'strategy_type': strategyType,
      if (structureType != null) 'structure_type': structureType,
      if (thesis != null) 'thesis': thesis,
      if (entryReason != null) 'entry_reason': entryReason,
      if (expectation != null) 'expectation': expectation,
      if (invalidationCondition != null)
        'invalidation_condition': invalidationCondition,
      if (status != null) 'status': status,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (summaryPnl != null) 'summary_pnl': summaryPnl,
      if (reviewText != null) 'review_text': reviewText,
      if (reviewScoreExecution != null)
        'review_score_execution': reviewScoreExecution,
      if (reviewScoreResult != null) 'review_score_result': reviewScoreResult,
      if (reviewPlanFollowed != null)
        'review_plan_followed': reviewPlanFollowed,
      if (finalExitReason != null) 'final_exit_reason': finalExitReason,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TradesCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? market,
    Value<String>? strategyType,
    Value<String>? structureType,
    Value<String?>? thesis,
    Value<String>? entryReason,
    Value<String?>? expectation,
    Value<String?>? invalidationCondition,
    Value<String>? status,
    Value<int>? startTime,
    Value<int?>? endTime,
    Value<double?>? summaryPnl,
    Value<String?>? reviewText,
    Value<int?>? reviewScoreExecution,
    Value<int?>? reviewScoreResult,
    Value<String?>? reviewPlanFollowed,
    Value<String?>? finalExitReason,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return TradesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      market: market ?? this.market,
      strategyType: strategyType ?? this.strategyType,
      structureType: structureType ?? this.structureType,
      thesis: thesis ?? this.thesis,
      entryReason: entryReason ?? this.entryReason,
      expectation: expectation ?? this.expectation,
      invalidationCondition:
          invalidationCondition ?? this.invalidationCondition,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      summaryPnl: summaryPnl ?? this.summaryPnl,
      reviewText: reviewText ?? this.reviewText,
      reviewScoreExecution: reviewScoreExecution ?? this.reviewScoreExecution,
      reviewScoreResult: reviewScoreResult ?? this.reviewScoreResult,
      reviewPlanFollowed: reviewPlanFollowed ?? this.reviewPlanFollowed,
      finalExitReason: finalExitReason ?? this.finalExitReason,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (market.present) {
      map['market'] = Variable<String>(market.value);
    }
    if (strategyType.present) {
      map['strategy_type'] = Variable<String>(strategyType.value);
    }
    if (structureType.present) {
      map['structure_type'] = Variable<String>(structureType.value);
    }
    if (thesis.present) {
      map['thesis'] = Variable<String>(thesis.value);
    }
    if (entryReason.present) {
      map['entry_reason'] = Variable<String>(entryReason.value);
    }
    if (expectation.present) {
      map['expectation'] = Variable<String>(expectation.value);
    }
    if (invalidationCondition.present) {
      map['invalidation_condition'] = Variable<String>(
        invalidationCondition.value,
      );
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<int>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<int>(endTime.value);
    }
    if (summaryPnl.present) {
      map['summary_pnl'] = Variable<double>(summaryPnl.value);
    }
    if (reviewText.present) {
      map['review_text'] = Variable<String>(reviewText.value);
    }
    if (reviewScoreExecution.present) {
      map['review_score_execution'] = Variable<int>(reviewScoreExecution.value);
    }
    if (reviewScoreResult.present) {
      map['review_score_result'] = Variable<int>(reviewScoreResult.value);
    }
    if (reviewPlanFollowed.present) {
      map['review_plan_followed'] = Variable<String>(reviewPlanFollowed.value);
    }
    if (finalExitReason.present) {
      map['final_exit_reason'] = Variable<String>(finalExitReason.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TradesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('market: $market, ')
          ..write('strategyType: $strategyType, ')
          ..write('structureType: $structureType, ')
          ..write('thesis: $thesis, ')
          ..write('entryReason: $entryReason, ')
          ..write('expectation: $expectation, ')
          ..write('invalidationCondition: $invalidationCondition, ')
          ..write('status: $status, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('summaryPnl: $summaryPnl, ')
          ..write('reviewText: $reviewText, ')
          ..write('reviewScoreExecution: $reviewScoreExecution, ')
          ..write('reviewScoreResult: $reviewScoreResult, ')
          ..write('reviewPlanFollowed: $reviewPlanFollowed, ')
          ..write('finalExitReason: $finalExitReason, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $LegsTable extends Legs with TableInfo<$LegsTable, Leg> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LegsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tradeIdMeta = const VerificationMeta(
    'tradeId',
  );
  @override
  late final GeneratedColumn<String> tradeId = GeneratedColumn<String>(
    'trade_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES trades (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _directionMeta = const VerificationMeta(
    'direction',
  );
  @override
  late final GeneratedColumn<String> direction = GeneratedColumn<String>(
    'direction',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _instrumentTypeMeta = const VerificationMeta(
    'instrumentType',
  );
  @override
  late final GeneratedColumn<String> instrumentType = GeneratedColumn<String>(
    'instrument_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _leverageMeta = const VerificationMeta(
    'leverage',
  );
  @override
  late final GeneratedColumn<double> leverage = GeneratedColumn<double>(
    'leverage',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _accountMeta = const VerificationMeta(
    'account',
  );
  @override
  late final GeneratedColumn<String> account = GeneratedColumn<String>(
    'account',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currencyMeta = const VerificationMeta(
    'currency',
  );
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
    'currency',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _initialPlanEntryPriceMeta =
      const VerificationMeta('initialPlanEntryPrice');
  @override
  late final GeneratedColumn<double> initialPlanEntryPrice =
      GeneratedColumn<double>(
        'initial_plan_entry_price',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _initialStopLossMeta = const VerificationMeta(
    'initialStopLoss',
  );
  @override
  late final GeneratedColumn<double> initialStopLoss = GeneratedColumn<double>(
    'initial_stop_loss',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _initialRiskBudgetMeta = const VerificationMeta(
    'initialRiskBudget',
  );
  @override
  late final GeneratedColumn<double> initialRiskBudget =
      GeneratedColumn<double>(
        'initial_risk_budget',
        aliasedName,
        true,
        type: DriftSqlType.double,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _initialAtrMeta = const VerificationMeta(
    'initialAtr',
  );
  @override
  late final GeneratedColumn<double> initialAtr = GeneratedColumn<double>(
    'initial_atr',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    tradeId,
    symbol,
    name,
    direction,
    instrumentType,
    leverage,
    account,
    currency,
    initialPlanEntryPrice,
    initialStopLoss,
    initialRiskBudget,
    initialAtr,
    note,
    sortOrder,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'legs';
  @override
  VerificationContext validateIntegrity(
    Insertable<Leg> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('trade_id')) {
      context.handle(
        _tradeIdMeta,
        tradeId.isAcceptableOrUnknown(data['trade_id']!, _tradeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tradeIdMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    }
    if (data.containsKey('direction')) {
      context.handle(
        _directionMeta,
        direction.isAcceptableOrUnknown(data['direction']!, _directionMeta),
      );
    } else if (isInserting) {
      context.missing(_directionMeta);
    }
    if (data.containsKey('instrument_type')) {
      context.handle(
        _instrumentTypeMeta,
        instrumentType.isAcceptableOrUnknown(
          data['instrument_type']!,
          _instrumentTypeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_instrumentTypeMeta);
    }
    if (data.containsKey('leverage')) {
      context.handle(
        _leverageMeta,
        leverage.isAcceptableOrUnknown(data['leverage']!, _leverageMeta),
      );
    }
    if (data.containsKey('account')) {
      context.handle(
        _accountMeta,
        account.isAcceptableOrUnknown(data['account']!, _accountMeta),
      );
    }
    if (data.containsKey('currency')) {
      context.handle(
        _currencyMeta,
        currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta),
      );
    }
    if (data.containsKey('initial_plan_entry_price')) {
      context.handle(
        _initialPlanEntryPriceMeta,
        initialPlanEntryPrice.isAcceptableOrUnknown(
          data['initial_plan_entry_price']!,
          _initialPlanEntryPriceMeta,
        ),
      );
    }
    if (data.containsKey('initial_stop_loss')) {
      context.handle(
        _initialStopLossMeta,
        initialStopLoss.isAcceptableOrUnknown(
          data['initial_stop_loss']!,
          _initialStopLossMeta,
        ),
      );
    }
    if (data.containsKey('initial_risk_budget')) {
      context.handle(
        _initialRiskBudgetMeta,
        initialRiskBudget.isAcceptableOrUnknown(
          data['initial_risk_budget']!,
          _initialRiskBudgetMeta,
        ),
      );
    }
    if (data.containsKey('initial_atr')) {
      context.handle(
        _initialAtrMeta,
        initialAtr.isAcceptableOrUnknown(data['initial_atr']!, _initialAtrMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Leg map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Leg(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      tradeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trade_id'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      ),
      direction: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}direction'],
      )!,
      instrumentType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}instrument_type'],
      )!,
      leverage: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}leverage'],
      ),
      account: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}account'],
      ),
      currency: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}currency'],
      ),
      initialPlanEntryPrice: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}initial_plan_entry_price'],
      ),
      initialStopLoss: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}initial_stop_loss'],
      ),
      initialRiskBudget: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}initial_risk_budget'],
      ),
      initialAtr: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}initial_atr'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $LegsTable createAlias(String alias) {
    return $LegsTable(attachedDatabase, alias);
  }
}

class Leg extends DataClass implements Insertable<Leg> {
  final String id;
  final String tradeId;
  final String symbol;
  final String? name;
  final String direction;
  final String instrumentType;
  final double? leverage;
  final String? account;
  final String? currency;
  final double? initialPlanEntryPrice;
  final double? initialStopLoss;
  final double? initialRiskBudget;
  final double? initialAtr;
  final String? note;
  final int sortOrder;
  final int createdAt;
  final int updatedAt;
  const Leg({
    required this.id,
    required this.tradeId,
    required this.symbol,
    this.name,
    required this.direction,
    required this.instrumentType,
    this.leverage,
    this.account,
    this.currency,
    this.initialPlanEntryPrice,
    this.initialStopLoss,
    this.initialRiskBudget,
    this.initialAtr,
    this.note,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['trade_id'] = Variable<String>(tradeId);
    map['symbol'] = Variable<String>(symbol);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    map['direction'] = Variable<String>(direction);
    map['instrument_type'] = Variable<String>(instrumentType);
    if (!nullToAbsent || leverage != null) {
      map['leverage'] = Variable<double>(leverage);
    }
    if (!nullToAbsent || account != null) {
      map['account'] = Variable<String>(account);
    }
    if (!nullToAbsent || currency != null) {
      map['currency'] = Variable<String>(currency);
    }
    if (!nullToAbsent || initialPlanEntryPrice != null) {
      map['initial_plan_entry_price'] = Variable<double>(initialPlanEntryPrice);
    }
    if (!nullToAbsent || initialStopLoss != null) {
      map['initial_stop_loss'] = Variable<double>(initialStopLoss);
    }
    if (!nullToAbsent || initialRiskBudget != null) {
      map['initial_risk_budget'] = Variable<double>(initialRiskBudget);
    }
    if (!nullToAbsent || initialAtr != null) {
      map['initial_atr'] = Variable<double>(initialAtr);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  LegsCompanion toCompanion(bool nullToAbsent) {
    return LegsCompanion(
      id: Value(id),
      tradeId: Value(tradeId),
      symbol: Value(symbol),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      direction: Value(direction),
      instrumentType: Value(instrumentType),
      leverage: leverage == null && nullToAbsent
          ? const Value.absent()
          : Value(leverage),
      account: account == null && nullToAbsent
          ? const Value.absent()
          : Value(account),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      initialPlanEntryPrice: initialPlanEntryPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(initialPlanEntryPrice),
      initialStopLoss: initialStopLoss == null && nullToAbsent
          ? const Value.absent()
          : Value(initialStopLoss),
      initialRiskBudget: initialRiskBudget == null && nullToAbsent
          ? const Value.absent()
          : Value(initialRiskBudget),
      initialAtr: initialAtr == null && nullToAbsent
          ? const Value.absent()
          : Value(initialAtr),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      sortOrder: Value(sortOrder),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Leg.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Leg(
      id: serializer.fromJson<String>(json['id']),
      tradeId: serializer.fromJson<String>(json['tradeId']),
      symbol: serializer.fromJson<String>(json['symbol']),
      name: serializer.fromJson<String?>(json['name']),
      direction: serializer.fromJson<String>(json['direction']),
      instrumentType: serializer.fromJson<String>(json['instrumentType']),
      leverage: serializer.fromJson<double?>(json['leverage']),
      account: serializer.fromJson<String?>(json['account']),
      currency: serializer.fromJson<String?>(json['currency']),
      initialPlanEntryPrice: serializer.fromJson<double?>(
        json['initialPlanEntryPrice'],
      ),
      initialStopLoss: serializer.fromJson<double?>(json['initialStopLoss']),
      initialRiskBudget: serializer.fromJson<double?>(
        json['initialRiskBudget'],
      ),
      initialAtr: serializer.fromJson<double?>(json['initialAtr']),
      note: serializer.fromJson<String?>(json['note']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'tradeId': serializer.toJson<String>(tradeId),
      'symbol': serializer.toJson<String>(symbol),
      'name': serializer.toJson<String?>(name),
      'direction': serializer.toJson<String>(direction),
      'instrumentType': serializer.toJson<String>(instrumentType),
      'leverage': serializer.toJson<double?>(leverage),
      'account': serializer.toJson<String?>(account),
      'currency': serializer.toJson<String?>(currency),
      'initialPlanEntryPrice': serializer.toJson<double?>(
        initialPlanEntryPrice,
      ),
      'initialStopLoss': serializer.toJson<double?>(initialStopLoss),
      'initialRiskBudget': serializer.toJson<double?>(initialRiskBudget),
      'initialAtr': serializer.toJson<double?>(initialAtr),
      'note': serializer.toJson<String?>(note),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  Leg copyWith({
    String? id,
    String? tradeId,
    String? symbol,
    Value<String?> name = const Value.absent(),
    String? direction,
    String? instrumentType,
    Value<double?> leverage = const Value.absent(),
    Value<String?> account = const Value.absent(),
    Value<String?> currency = const Value.absent(),
    Value<double?> initialPlanEntryPrice = const Value.absent(),
    Value<double?> initialStopLoss = const Value.absent(),
    Value<double?> initialRiskBudget = const Value.absent(),
    Value<double?> initialAtr = const Value.absent(),
    Value<String?> note = const Value.absent(),
    int? sortOrder,
    int? createdAt,
    int? updatedAt,
  }) => Leg(
    id: id ?? this.id,
    tradeId: tradeId ?? this.tradeId,
    symbol: symbol ?? this.symbol,
    name: name.present ? name.value : this.name,
    direction: direction ?? this.direction,
    instrumentType: instrumentType ?? this.instrumentType,
    leverage: leverage.present ? leverage.value : this.leverage,
    account: account.present ? account.value : this.account,
    currency: currency.present ? currency.value : this.currency,
    initialPlanEntryPrice: initialPlanEntryPrice.present
        ? initialPlanEntryPrice.value
        : this.initialPlanEntryPrice,
    initialStopLoss: initialStopLoss.present
        ? initialStopLoss.value
        : this.initialStopLoss,
    initialRiskBudget: initialRiskBudget.present
        ? initialRiskBudget.value
        : this.initialRiskBudget,
    initialAtr: initialAtr.present ? initialAtr.value : this.initialAtr,
    note: note.present ? note.value : this.note,
    sortOrder: sortOrder ?? this.sortOrder,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Leg copyWithCompanion(LegsCompanion data) {
    return Leg(
      id: data.id.present ? data.id.value : this.id,
      tradeId: data.tradeId.present ? data.tradeId.value : this.tradeId,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
      name: data.name.present ? data.name.value : this.name,
      direction: data.direction.present ? data.direction.value : this.direction,
      instrumentType: data.instrumentType.present
          ? data.instrumentType.value
          : this.instrumentType,
      leverage: data.leverage.present ? data.leverage.value : this.leverage,
      account: data.account.present ? data.account.value : this.account,
      currency: data.currency.present ? data.currency.value : this.currency,
      initialPlanEntryPrice: data.initialPlanEntryPrice.present
          ? data.initialPlanEntryPrice.value
          : this.initialPlanEntryPrice,
      initialStopLoss: data.initialStopLoss.present
          ? data.initialStopLoss.value
          : this.initialStopLoss,
      initialRiskBudget: data.initialRiskBudget.present
          ? data.initialRiskBudget.value
          : this.initialRiskBudget,
      initialAtr: data.initialAtr.present
          ? data.initialAtr.value
          : this.initialAtr,
      note: data.note.present ? data.note.value : this.note,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Leg(')
          ..write('id: $id, ')
          ..write('tradeId: $tradeId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('direction: $direction, ')
          ..write('instrumentType: $instrumentType, ')
          ..write('leverage: $leverage, ')
          ..write('account: $account, ')
          ..write('currency: $currency, ')
          ..write('initialPlanEntryPrice: $initialPlanEntryPrice, ')
          ..write('initialStopLoss: $initialStopLoss, ')
          ..write('initialRiskBudget: $initialRiskBudget, ')
          ..write('initialAtr: $initialAtr, ')
          ..write('note: $note, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    tradeId,
    symbol,
    name,
    direction,
    instrumentType,
    leverage,
    account,
    currency,
    initialPlanEntryPrice,
    initialStopLoss,
    initialRiskBudget,
    initialAtr,
    note,
    sortOrder,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Leg &&
          other.id == this.id &&
          other.tradeId == this.tradeId &&
          other.symbol == this.symbol &&
          other.name == this.name &&
          other.direction == this.direction &&
          other.instrumentType == this.instrumentType &&
          other.leverage == this.leverage &&
          other.account == this.account &&
          other.currency == this.currency &&
          other.initialPlanEntryPrice == this.initialPlanEntryPrice &&
          other.initialStopLoss == this.initialStopLoss &&
          other.initialRiskBudget == this.initialRiskBudget &&
          other.initialAtr == this.initialAtr &&
          other.note == this.note &&
          other.sortOrder == this.sortOrder &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class LegsCompanion extends UpdateCompanion<Leg> {
  final Value<String> id;
  final Value<String> tradeId;
  final Value<String> symbol;
  final Value<String?> name;
  final Value<String> direction;
  final Value<String> instrumentType;
  final Value<double?> leverage;
  final Value<String?> account;
  final Value<String?> currency;
  final Value<double?> initialPlanEntryPrice;
  final Value<double?> initialStopLoss;
  final Value<double?> initialRiskBudget;
  final Value<double?> initialAtr;
  final Value<String?> note;
  final Value<int> sortOrder;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const LegsCompanion({
    this.id = const Value.absent(),
    this.tradeId = const Value.absent(),
    this.symbol = const Value.absent(),
    this.name = const Value.absent(),
    this.direction = const Value.absent(),
    this.instrumentType = const Value.absent(),
    this.leverage = const Value.absent(),
    this.account = const Value.absent(),
    this.currency = const Value.absent(),
    this.initialPlanEntryPrice = const Value.absent(),
    this.initialStopLoss = const Value.absent(),
    this.initialRiskBudget = const Value.absent(),
    this.initialAtr = const Value.absent(),
    this.note = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  LegsCompanion.insert({
    required String id,
    required String tradeId,
    required String symbol,
    this.name = const Value.absent(),
    required String direction,
    required String instrumentType,
    this.leverage = const Value.absent(),
    this.account = const Value.absent(),
    this.currency = const Value.absent(),
    this.initialPlanEntryPrice = const Value.absent(),
    this.initialStopLoss = const Value.absent(),
    this.initialRiskBudget = const Value.absent(),
    this.initialAtr = const Value.absent(),
    this.note = const Value.absent(),
    this.sortOrder = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       tradeId = Value(tradeId),
       symbol = Value(symbol),
       direction = Value(direction),
       instrumentType = Value(instrumentType),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Leg> custom({
    Expression<String>? id,
    Expression<String>? tradeId,
    Expression<String>? symbol,
    Expression<String>? name,
    Expression<String>? direction,
    Expression<String>? instrumentType,
    Expression<double>? leverage,
    Expression<String>? account,
    Expression<String>? currency,
    Expression<double>? initialPlanEntryPrice,
    Expression<double>? initialStopLoss,
    Expression<double>? initialRiskBudget,
    Expression<double>? initialAtr,
    Expression<String>? note,
    Expression<int>? sortOrder,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tradeId != null) 'trade_id': tradeId,
      if (symbol != null) 'symbol': symbol,
      if (name != null) 'name': name,
      if (direction != null) 'direction': direction,
      if (instrumentType != null) 'instrument_type': instrumentType,
      if (leverage != null) 'leverage': leverage,
      if (account != null) 'account': account,
      if (currency != null) 'currency': currency,
      if (initialPlanEntryPrice != null)
        'initial_plan_entry_price': initialPlanEntryPrice,
      if (initialStopLoss != null) 'initial_stop_loss': initialStopLoss,
      if (initialRiskBudget != null) 'initial_risk_budget': initialRiskBudget,
      if (initialAtr != null) 'initial_atr': initialAtr,
      if (note != null) 'note': note,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  LegsCompanion copyWith({
    Value<String>? id,
    Value<String>? tradeId,
    Value<String>? symbol,
    Value<String?>? name,
    Value<String>? direction,
    Value<String>? instrumentType,
    Value<double?>? leverage,
    Value<String?>? account,
    Value<String?>? currency,
    Value<double?>? initialPlanEntryPrice,
    Value<double?>? initialStopLoss,
    Value<double?>? initialRiskBudget,
    Value<double?>? initialAtr,
    Value<String?>? note,
    Value<int>? sortOrder,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return LegsCompanion(
      id: id ?? this.id,
      tradeId: tradeId ?? this.tradeId,
      symbol: symbol ?? this.symbol,
      name: name ?? this.name,
      direction: direction ?? this.direction,
      instrumentType: instrumentType ?? this.instrumentType,
      leverage: leverage ?? this.leverage,
      account: account ?? this.account,
      currency: currency ?? this.currency,
      initialPlanEntryPrice:
          initialPlanEntryPrice ?? this.initialPlanEntryPrice,
      initialStopLoss: initialStopLoss ?? this.initialStopLoss,
      initialRiskBudget: initialRiskBudget ?? this.initialRiskBudget,
      initialAtr: initialAtr ?? this.initialAtr,
      note: note ?? this.note,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (tradeId.present) {
      map['trade_id'] = Variable<String>(tradeId.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (direction.present) {
      map['direction'] = Variable<String>(direction.value);
    }
    if (instrumentType.present) {
      map['instrument_type'] = Variable<String>(instrumentType.value);
    }
    if (leverage.present) {
      map['leverage'] = Variable<double>(leverage.value);
    }
    if (account.present) {
      map['account'] = Variable<String>(account.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (initialPlanEntryPrice.present) {
      map['initial_plan_entry_price'] = Variable<double>(
        initialPlanEntryPrice.value,
      );
    }
    if (initialStopLoss.present) {
      map['initial_stop_loss'] = Variable<double>(initialStopLoss.value);
    }
    if (initialRiskBudget.present) {
      map['initial_risk_budget'] = Variable<double>(initialRiskBudget.value);
    }
    if (initialAtr.present) {
      map['initial_atr'] = Variable<double>(initialAtr.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LegsCompanion(')
          ..write('id: $id, ')
          ..write('tradeId: $tradeId, ')
          ..write('symbol: $symbol, ')
          ..write('name: $name, ')
          ..write('direction: $direction, ')
          ..write('instrumentType: $instrumentType, ')
          ..write('leverage: $leverage, ')
          ..write('account: $account, ')
          ..write('currency: $currency, ')
          ..write('initialPlanEntryPrice: $initialPlanEntryPrice, ')
          ..write('initialStopLoss: $initialStopLoss, ')
          ..write('initialRiskBudget: $initialRiskBudget, ')
          ..write('initialAtr: $initialAtr, ')
          ..write('note: $note, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EventsTable extends Events with TableInfo<$EventsTable, Event> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tradeIdMeta = const VerificationMeta(
    'tradeId',
  );
  @override
  late final GeneratedColumn<String> tradeId = GeneratedColumn<String>(
    'trade_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES trades (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _scopeTypeMeta = const VerificationMeta(
    'scopeType',
  );
  @override
  late final GeneratedColumn<String> scopeType = GeneratedColumn<String>(
    'scope_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _legIdMeta = const VerificationMeta('legId');
  @override
  late final GeneratedColumn<String> legId = GeneratedColumn<String>(
    'leg_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES legs (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _eventTypeMeta = const VerificationMeta(
    'eventType',
  );
  @override
  late final GeneratedColumn<String> eventType = GeneratedColumn<String>(
    'event_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _eventTimeMeta = const VerificationMeta(
    'eventTime',
  );
  @override
  late final GeneratedColumn<int> eventTime = GeneratedColumn<int>(
    'event_time',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
    'price',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
    'quantity',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _notionalMeta = const VerificationMeta(
    'notional',
  );
  @override
  late final GeneratedColumn<double> notional = GeneratedColumn<double>(
    'notional',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _riskDeltaMeta = const VerificationMeta(
    'riskDelta',
  );
  @override
  late final GeneratedColumn<double> riskDelta = GeneratedColumn<double>(
    'risk_delta',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stopLossBeforeMeta = const VerificationMeta(
    'stopLossBefore',
  );
  @override
  late final GeneratedColumn<double> stopLossBefore = GeneratedColumn<double>(
    'stop_loss_before',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stopLossAfterMeta = const VerificationMeta(
    'stopLossAfter',
  );
  @override
  late final GeneratedColumn<double> stopLossAfter = GeneratedColumn<double>(
    'stop_loss_after',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetBeforeMeta = const VerificationMeta(
    'targetBefore',
  );
  @override
  late final GeneratedColumn<double> targetBefore = GeneratedColumn<double>(
    'target_before',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetAfterMeta = const VerificationMeta(
    'targetAfter',
  );
  @override
  late final GeneratedColumn<double> targetAfter = GeneratedColumn<double>(
    'target_after',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _atrMeta = const VerificationMeta('atr');
  @override
  late final GeneratedColumn<double> atr = GeneratedColumn<double>(
    'atr',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
    'reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _pnlRealizedMeta = const VerificationMeta(
    'pnlRealized',
  );
  @override
  late final GeneratedColumn<double> pnlRealized = GeneratedColumn<double>(
    'pnl_realized',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _relatedMarketContextMeta =
      const VerificationMeta('relatedMarketContext');
  @override
  late final GeneratedColumn<String> relatedMarketContext =
      GeneratedColumn<String>(
        'related_market_context',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<int> updatedAt = GeneratedColumn<int>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    tradeId,
    scopeType,
    legId,
    eventType,
    eventTime,
    title,
    note,
    price,
    quantity,
    notional,
    riskDelta,
    stopLossBefore,
    stopLossAfter,
    targetBefore,
    targetAfter,
    atr,
    reason,
    pnlRealized,
    relatedMarketContext,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'events';
  @override
  VerificationContext validateIntegrity(
    Insertable<Event> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('trade_id')) {
      context.handle(
        _tradeIdMeta,
        tradeId.isAcceptableOrUnknown(data['trade_id']!, _tradeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tradeIdMeta);
    }
    if (data.containsKey('scope_type')) {
      context.handle(
        _scopeTypeMeta,
        scopeType.isAcceptableOrUnknown(data['scope_type']!, _scopeTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_scopeTypeMeta);
    }
    if (data.containsKey('leg_id')) {
      context.handle(
        _legIdMeta,
        legId.isAcceptableOrUnknown(data['leg_id']!, _legIdMeta),
      );
    }
    if (data.containsKey('event_type')) {
      context.handle(
        _eventTypeMeta,
        eventType.isAcceptableOrUnknown(data['event_type']!, _eventTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_eventTypeMeta);
    }
    if (data.containsKey('event_time')) {
      context.handle(
        _eventTimeMeta,
        eventTime.isAcceptableOrUnknown(data['event_time']!, _eventTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_eventTimeMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    }
    if (data.containsKey('notional')) {
      context.handle(
        _notionalMeta,
        notional.isAcceptableOrUnknown(data['notional']!, _notionalMeta),
      );
    }
    if (data.containsKey('risk_delta')) {
      context.handle(
        _riskDeltaMeta,
        riskDelta.isAcceptableOrUnknown(data['risk_delta']!, _riskDeltaMeta),
      );
    }
    if (data.containsKey('stop_loss_before')) {
      context.handle(
        _stopLossBeforeMeta,
        stopLossBefore.isAcceptableOrUnknown(
          data['stop_loss_before']!,
          _stopLossBeforeMeta,
        ),
      );
    }
    if (data.containsKey('stop_loss_after')) {
      context.handle(
        _stopLossAfterMeta,
        stopLossAfter.isAcceptableOrUnknown(
          data['stop_loss_after']!,
          _stopLossAfterMeta,
        ),
      );
    }
    if (data.containsKey('target_before')) {
      context.handle(
        _targetBeforeMeta,
        targetBefore.isAcceptableOrUnknown(
          data['target_before']!,
          _targetBeforeMeta,
        ),
      );
    }
    if (data.containsKey('target_after')) {
      context.handle(
        _targetAfterMeta,
        targetAfter.isAcceptableOrUnknown(
          data['target_after']!,
          _targetAfterMeta,
        ),
      );
    }
    if (data.containsKey('atr')) {
      context.handle(
        _atrMeta,
        atr.isAcceptableOrUnknown(data['atr']!, _atrMeta),
      );
    }
    if (data.containsKey('reason')) {
      context.handle(
        _reasonMeta,
        reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta),
      );
    }
    if (data.containsKey('pnl_realized')) {
      context.handle(
        _pnlRealizedMeta,
        pnlRealized.isAcceptableOrUnknown(
          data['pnl_realized']!,
          _pnlRealizedMeta,
        ),
      );
    }
    if (data.containsKey('related_market_context')) {
      context.handle(
        _relatedMarketContextMeta,
        relatedMarketContext.isAcceptableOrUnknown(
          data['related_market_context']!,
          _relatedMarketContextMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Event map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Event(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      tradeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trade_id'],
      )!,
      scopeType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}scope_type'],
      )!,
      legId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}leg_id'],
      ),
      eventType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}event_type'],
      )!,
      eventTime: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}event_time'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}price'],
      ),
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity'],
      ),
      notional: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}notional'],
      ),
      riskDelta: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}risk_delta'],
      ),
      stopLossBefore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}stop_loss_before'],
      ),
      stopLossAfter: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}stop_loss_after'],
      ),
      targetBefore: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_before'],
      ),
      targetAfter: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}target_after'],
      ),
      atr: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}atr'],
      ),
      reason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reason'],
      ),
      pnlRealized: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}pnl_realized'],
      ),
      relatedMarketContext: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}related_market_context'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $EventsTable createAlias(String alias) {
    return $EventsTable(attachedDatabase, alias);
  }
}

class Event extends DataClass implements Insertable<Event> {
  final String id;
  final String tradeId;
  final String scopeType;
  final String? legId;
  final String eventType;
  final int eventTime;
  final String? title;
  final String note;
  final double? price;
  final double? quantity;
  final double? notional;
  final double? riskDelta;
  final double? stopLossBefore;
  final double? stopLossAfter;
  final double? targetBefore;
  final double? targetAfter;
  final double? atr;
  final String? reason;
  final double? pnlRealized;
  final String? relatedMarketContext;
  final int createdAt;
  final int updatedAt;
  const Event({
    required this.id,
    required this.tradeId,
    required this.scopeType,
    this.legId,
    required this.eventType,
    required this.eventTime,
    this.title,
    required this.note,
    this.price,
    this.quantity,
    this.notional,
    this.riskDelta,
    this.stopLossBefore,
    this.stopLossAfter,
    this.targetBefore,
    this.targetAfter,
    this.atr,
    this.reason,
    this.pnlRealized,
    this.relatedMarketContext,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['trade_id'] = Variable<String>(tradeId);
    map['scope_type'] = Variable<String>(scopeType);
    if (!nullToAbsent || legId != null) {
      map['leg_id'] = Variable<String>(legId);
    }
    map['event_type'] = Variable<String>(eventType);
    map['event_time'] = Variable<int>(eventTime);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    map['note'] = Variable<String>(note);
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || quantity != null) {
      map['quantity'] = Variable<double>(quantity);
    }
    if (!nullToAbsent || notional != null) {
      map['notional'] = Variable<double>(notional);
    }
    if (!nullToAbsent || riskDelta != null) {
      map['risk_delta'] = Variable<double>(riskDelta);
    }
    if (!nullToAbsent || stopLossBefore != null) {
      map['stop_loss_before'] = Variable<double>(stopLossBefore);
    }
    if (!nullToAbsent || stopLossAfter != null) {
      map['stop_loss_after'] = Variable<double>(stopLossAfter);
    }
    if (!nullToAbsent || targetBefore != null) {
      map['target_before'] = Variable<double>(targetBefore);
    }
    if (!nullToAbsent || targetAfter != null) {
      map['target_after'] = Variable<double>(targetAfter);
    }
    if (!nullToAbsent || atr != null) {
      map['atr'] = Variable<double>(atr);
    }
    if (!nullToAbsent || reason != null) {
      map['reason'] = Variable<String>(reason);
    }
    if (!nullToAbsent || pnlRealized != null) {
      map['pnl_realized'] = Variable<double>(pnlRealized);
    }
    if (!nullToAbsent || relatedMarketContext != null) {
      map['related_market_context'] = Variable<String>(relatedMarketContext);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['updated_at'] = Variable<int>(updatedAt);
    return map;
  }

  EventsCompanion toCompanion(bool nullToAbsent) {
    return EventsCompanion(
      id: Value(id),
      tradeId: Value(tradeId),
      scopeType: Value(scopeType),
      legId: legId == null && nullToAbsent
          ? const Value.absent()
          : Value(legId),
      eventType: Value(eventType),
      eventTime: Value(eventTime),
      title: title == null && nullToAbsent
          ? const Value.absent()
          : Value(title),
      note: Value(note),
      price: price == null && nullToAbsent
          ? const Value.absent()
          : Value(price),
      quantity: quantity == null && nullToAbsent
          ? const Value.absent()
          : Value(quantity),
      notional: notional == null && nullToAbsent
          ? const Value.absent()
          : Value(notional),
      riskDelta: riskDelta == null && nullToAbsent
          ? const Value.absent()
          : Value(riskDelta),
      stopLossBefore: stopLossBefore == null && nullToAbsent
          ? const Value.absent()
          : Value(stopLossBefore),
      stopLossAfter: stopLossAfter == null && nullToAbsent
          ? const Value.absent()
          : Value(stopLossAfter),
      targetBefore: targetBefore == null && nullToAbsent
          ? const Value.absent()
          : Value(targetBefore),
      targetAfter: targetAfter == null && nullToAbsent
          ? const Value.absent()
          : Value(targetAfter),
      atr: atr == null && nullToAbsent ? const Value.absent() : Value(atr),
      reason: reason == null && nullToAbsent
          ? const Value.absent()
          : Value(reason),
      pnlRealized: pnlRealized == null && nullToAbsent
          ? const Value.absent()
          : Value(pnlRealized),
      relatedMarketContext: relatedMarketContext == null && nullToAbsent
          ? const Value.absent()
          : Value(relatedMarketContext),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Event.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Event(
      id: serializer.fromJson<String>(json['id']),
      tradeId: serializer.fromJson<String>(json['tradeId']),
      scopeType: serializer.fromJson<String>(json['scopeType']),
      legId: serializer.fromJson<String?>(json['legId']),
      eventType: serializer.fromJson<String>(json['eventType']),
      eventTime: serializer.fromJson<int>(json['eventTime']),
      title: serializer.fromJson<String?>(json['title']),
      note: serializer.fromJson<String>(json['note']),
      price: serializer.fromJson<double?>(json['price']),
      quantity: serializer.fromJson<double?>(json['quantity']),
      notional: serializer.fromJson<double?>(json['notional']),
      riskDelta: serializer.fromJson<double?>(json['riskDelta']),
      stopLossBefore: serializer.fromJson<double?>(json['stopLossBefore']),
      stopLossAfter: serializer.fromJson<double?>(json['stopLossAfter']),
      targetBefore: serializer.fromJson<double?>(json['targetBefore']),
      targetAfter: serializer.fromJson<double?>(json['targetAfter']),
      atr: serializer.fromJson<double?>(json['atr']),
      reason: serializer.fromJson<String?>(json['reason']),
      pnlRealized: serializer.fromJson<double?>(json['pnlRealized']),
      relatedMarketContext: serializer.fromJson<String?>(
        json['relatedMarketContext'],
      ),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      updatedAt: serializer.fromJson<int>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'tradeId': serializer.toJson<String>(tradeId),
      'scopeType': serializer.toJson<String>(scopeType),
      'legId': serializer.toJson<String?>(legId),
      'eventType': serializer.toJson<String>(eventType),
      'eventTime': serializer.toJson<int>(eventTime),
      'title': serializer.toJson<String?>(title),
      'note': serializer.toJson<String>(note),
      'price': serializer.toJson<double?>(price),
      'quantity': serializer.toJson<double?>(quantity),
      'notional': serializer.toJson<double?>(notional),
      'riskDelta': serializer.toJson<double?>(riskDelta),
      'stopLossBefore': serializer.toJson<double?>(stopLossBefore),
      'stopLossAfter': serializer.toJson<double?>(stopLossAfter),
      'targetBefore': serializer.toJson<double?>(targetBefore),
      'targetAfter': serializer.toJson<double?>(targetAfter),
      'atr': serializer.toJson<double?>(atr),
      'reason': serializer.toJson<String?>(reason),
      'pnlRealized': serializer.toJson<double?>(pnlRealized),
      'relatedMarketContext': serializer.toJson<String?>(relatedMarketContext),
      'createdAt': serializer.toJson<int>(createdAt),
      'updatedAt': serializer.toJson<int>(updatedAt),
    };
  }

  Event copyWith({
    String? id,
    String? tradeId,
    String? scopeType,
    Value<String?> legId = const Value.absent(),
    String? eventType,
    int? eventTime,
    Value<String?> title = const Value.absent(),
    String? note,
    Value<double?> price = const Value.absent(),
    Value<double?> quantity = const Value.absent(),
    Value<double?> notional = const Value.absent(),
    Value<double?> riskDelta = const Value.absent(),
    Value<double?> stopLossBefore = const Value.absent(),
    Value<double?> stopLossAfter = const Value.absent(),
    Value<double?> targetBefore = const Value.absent(),
    Value<double?> targetAfter = const Value.absent(),
    Value<double?> atr = const Value.absent(),
    Value<String?> reason = const Value.absent(),
    Value<double?> pnlRealized = const Value.absent(),
    Value<String?> relatedMarketContext = const Value.absent(),
    int? createdAt,
    int? updatedAt,
  }) => Event(
    id: id ?? this.id,
    tradeId: tradeId ?? this.tradeId,
    scopeType: scopeType ?? this.scopeType,
    legId: legId.present ? legId.value : this.legId,
    eventType: eventType ?? this.eventType,
    eventTime: eventTime ?? this.eventTime,
    title: title.present ? title.value : this.title,
    note: note ?? this.note,
    price: price.present ? price.value : this.price,
    quantity: quantity.present ? quantity.value : this.quantity,
    notional: notional.present ? notional.value : this.notional,
    riskDelta: riskDelta.present ? riskDelta.value : this.riskDelta,
    stopLossBefore: stopLossBefore.present
        ? stopLossBefore.value
        : this.stopLossBefore,
    stopLossAfter: stopLossAfter.present
        ? stopLossAfter.value
        : this.stopLossAfter,
    targetBefore: targetBefore.present ? targetBefore.value : this.targetBefore,
    targetAfter: targetAfter.present ? targetAfter.value : this.targetAfter,
    atr: atr.present ? atr.value : this.atr,
    reason: reason.present ? reason.value : this.reason,
    pnlRealized: pnlRealized.present ? pnlRealized.value : this.pnlRealized,
    relatedMarketContext: relatedMarketContext.present
        ? relatedMarketContext.value
        : this.relatedMarketContext,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Event copyWithCompanion(EventsCompanion data) {
    return Event(
      id: data.id.present ? data.id.value : this.id,
      tradeId: data.tradeId.present ? data.tradeId.value : this.tradeId,
      scopeType: data.scopeType.present ? data.scopeType.value : this.scopeType,
      legId: data.legId.present ? data.legId.value : this.legId,
      eventType: data.eventType.present ? data.eventType.value : this.eventType,
      eventTime: data.eventTime.present ? data.eventTime.value : this.eventTime,
      title: data.title.present ? data.title.value : this.title,
      note: data.note.present ? data.note.value : this.note,
      price: data.price.present ? data.price.value : this.price,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      notional: data.notional.present ? data.notional.value : this.notional,
      riskDelta: data.riskDelta.present ? data.riskDelta.value : this.riskDelta,
      stopLossBefore: data.stopLossBefore.present
          ? data.stopLossBefore.value
          : this.stopLossBefore,
      stopLossAfter: data.stopLossAfter.present
          ? data.stopLossAfter.value
          : this.stopLossAfter,
      targetBefore: data.targetBefore.present
          ? data.targetBefore.value
          : this.targetBefore,
      targetAfter: data.targetAfter.present
          ? data.targetAfter.value
          : this.targetAfter,
      atr: data.atr.present ? data.atr.value : this.atr,
      reason: data.reason.present ? data.reason.value : this.reason,
      pnlRealized: data.pnlRealized.present
          ? data.pnlRealized.value
          : this.pnlRealized,
      relatedMarketContext: data.relatedMarketContext.present
          ? data.relatedMarketContext.value
          : this.relatedMarketContext,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Event(')
          ..write('id: $id, ')
          ..write('tradeId: $tradeId, ')
          ..write('scopeType: $scopeType, ')
          ..write('legId: $legId, ')
          ..write('eventType: $eventType, ')
          ..write('eventTime: $eventTime, ')
          ..write('title: $title, ')
          ..write('note: $note, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('notional: $notional, ')
          ..write('riskDelta: $riskDelta, ')
          ..write('stopLossBefore: $stopLossBefore, ')
          ..write('stopLossAfter: $stopLossAfter, ')
          ..write('targetBefore: $targetBefore, ')
          ..write('targetAfter: $targetAfter, ')
          ..write('atr: $atr, ')
          ..write('reason: $reason, ')
          ..write('pnlRealized: $pnlRealized, ')
          ..write('relatedMarketContext: $relatedMarketContext, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    tradeId,
    scopeType,
    legId,
    eventType,
    eventTime,
    title,
    note,
    price,
    quantity,
    notional,
    riskDelta,
    stopLossBefore,
    stopLossAfter,
    targetBefore,
    targetAfter,
    atr,
    reason,
    pnlRealized,
    relatedMarketContext,
    createdAt,
    updatedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Event &&
          other.id == this.id &&
          other.tradeId == this.tradeId &&
          other.scopeType == this.scopeType &&
          other.legId == this.legId &&
          other.eventType == this.eventType &&
          other.eventTime == this.eventTime &&
          other.title == this.title &&
          other.note == this.note &&
          other.price == this.price &&
          other.quantity == this.quantity &&
          other.notional == this.notional &&
          other.riskDelta == this.riskDelta &&
          other.stopLossBefore == this.stopLossBefore &&
          other.stopLossAfter == this.stopLossAfter &&
          other.targetBefore == this.targetBefore &&
          other.targetAfter == this.targetAfter &&
          other.atr == this.atr &&
          other.reason == this.reason &&
          other.pnlRealized == this.pnlRealized &&
          other.relatedMarketContext == this.relatedMarketContext &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class EventsCompanion extends UpdateCompanion<Event> {
  final Value<String> id;
  final Value<String> tradeId;
  final Value<String> scopeType;
  final Value<String?> legId;
  final Value<String> eventType;
  final Value<int> eventTime;
  final Value<String?> title;
  final Value<String> note;
  final Value<double?> price;
  final Value<double?> quantity;
  final Value<double?> notional;
  final Value<double?> riskDelta;
  final Value<double?> stopLossBefore;
  final Value<double?> stopLossAfter;
  final Value<double?> targetBefore;
  final Value<double?> targetAfter;
  final Value<double?> atr;
  final Value<String?> reason;
  final Value<double?> pnlRealized;
  final Value<String?> relatedMarketContext;
  final Value<int> createdAt;
  final Value<int> updatedAt;
  final Value<int> rowid;
  const EventsCompanion({
    this.id = const Value.absent(),
    this.tradeId = const Value.absent(),
    this.scopeType = const Value.absent(),
    this.legId = const Value.absent(),
    this.eventType = const Value.absent(),
    this.eventTime = const Value.absent(),
    this.title = const Value.absent(),
    this.note = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.notional = const Value.absent(),
    this.riskDelta = const Value.absent(),
    this.stopLossBefore = const Value.absent(),
    this.stopLossAfter = const Value.absent(),
    this.targetBefore = const Value.absent(),
    this.targetAfter = const Value.absent(),
    this.atr = const Value.absent(),
    this.reason = const Value.absent(),
    this.pnlRealized = const Value.absent(),
    this.relatedMarketContext = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventsCompanion.insert({
    required String id,
    required String tradeId,
    required String scopeType,
    this.legId = const Value.absent(),
    required String eventType,
    required int eventTime,
    this.title = const Value.absent(),
    required String note,
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.notional = const Value.absent(),
    this.riskDelta = const Value.absent(),
    this.stopLossBefore = const Value.absent(),
    this.stopLossAfter = const Value.absent(),
    this.targetBefore = const Value.absent(),
    this.targetAfter = const Value.absent(),
    this.atr = const Value.absent(),
    this.reason = const Value.absent(),
    this.pnlRealized = const Value.absent(),
    this.relatedMarketContext = const Value.absent(),
    required int createdAt,
    required int updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       tradeId = Value(tradeId),
       scopeType = Value(scopeType),
       eventType = Value(eventType),
       eventTime = Value(eventTime),
       note = Value(note),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Event> custom({
    Expression<String>? id,
    Expression<String>? tradeId,
    Expression<String>? scopeType,
    Expression<String>? legId,
    Expression<String>? eventType,
    Expression<int>? eventTime,
    Expression<String>? title,
    Expression<String>? note,
    Expression<double>? price,
    Expression<double>? quantity,
    Expression<double>? notional,
    Expression<double>? riskDelta,
    Expression<double>? stopLossBefore,
    Expression<double>? stopLossAfter,
    Expression<double>? targetBefore,
    Expression<double>? targetAfter,
    Expression<double>? atr,
    Expression<String>? reason,
    Expression<double>? pnlRealized,
    Expression<String>? relatedMarketContext,
    Expression<int>? createdAt,
    Expression<int>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tradeId != null) 'trade_id': tradeId,
      if (scopeType != null) 'scope_type': scopeType,
      if (legId != null) 'leg_id': legId,
      if (eventType != null) 'event_type': eventType,
      if (eventTime != null) 'event_time': eventTime,
      if (title != null) 'title': title,
      if (note != null) 'note': note,
      if (price != null) 'price': price,
      if (quantity != null) 'quantity': quantity,
      if (notional != null) 'notional': notional,
      if (riskDelta != null) 'risk_delta': riskDelta,
      if (stopLossBefore != null) 'stop_loss_before': stopLossBefore,
      if (stopLossAfter != null) 'stop_loss_after': stopLossAfter,
      if (targetBefore != null) 'target_before': targetBefore,
      if (targetAfter != null) 'target_after': targetAfter,
      if (atr != null) 'atr': atr,
      if (reason != null) 'reason': reason,
      if (pnlRealized != null) 'pnl_realized': pnlRealized,
      if (relatedMarketContext != null)
        'related_market_context': relatedMarketContext,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventsCompanion copyWith({
    Value<String>? id,
    Value<String>? tradeId,
    Value<String>? scopeType,
    Value<String?>? legId,
    Value<String>? eventType,
    Value<int>? eventTime,
    Value<String?>? title,
    Value<String>? note,
    Value<double?>? price,
    Value<double?>? quantity,
    Value<double?>? notional,
    Value<double?>? riskDelta,
    Value<double?>? stopLossBefore,
    Value<double?>? stopLossAfter,
    Value<double?>? targetBefore,
    Value<double?>? targetAfter,
    Value<double?>? atr,
    Value<String?>? reason,
    Value<double?>? pnlRealized,
    Value<String?>? relatedMarketContext,
    Value<int>? createdAt,
    Value<int>? updatedAt,
    Value<int>? rowid,
  }) {
    return EventsCompanion(
      id: id ?? this.id,
      tradeId: tradeId ?? this.tradeId,
      scopeType: scopeType ?? this.scopeType,
      legId: legId ?? this.legId,
      eventType: eventType ?? this.eventType,
      eventTime: eventTime ?? this.eventTime,
      title: title ?? this.title,
      note: note ?? this.note,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      notional: notional ?? this.notional,
      riskDelta: riskDelta ?? this.riskDelta,
      stopLossBefore: stopLossBefore ?? this.stopLossBefore,
      stopLossAfter: stopLossAfter ?? this.stopLossAfter,
      targetBefore: targetBefore ?? this.targetBefore,
      targetAfter: targetAfter ?? this.targetAfter,
      atr: atr ?? this.atr,
      reason: reason ?? this.reason,
      pnlRealized: pnlRealized ?? this.pnlRealized,
      relatedMarketContext: relatedMarketContext ?? this.relatedMarketContext,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (tradeId.present) {
      map['trade_id'] = Variable<String>(tradeId.value);
    }
    if (scopeType.present) {
      map['scope_type'] = Variable<String>(scopeType.value);
    }
    if (legId.present) {
      map['leg_id'] = Variable<String>(legId.value);
    }
    if (eventType.present) {
      map['event_type'] = Variable<String>(eventType.value);
    }
    if (eventTime.present) {
      map['event_time'] = Variable<int>(eventTime.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (notional.present) {
      map['notional'] = Variable<double>(notional.value);
    }
    if (riskDelta.present) {
      map['risk_delta'] = Variable<double>(riskDelta.value);
    }
    if (stopLossBefore.present) {
      map['stop_loss_before'] = Variable<double>(stopLossBefore.value);
    }
    if (stopLossAfter.present) {
      map['stop_loss_after'] = Variable<double>(stopLossAfter.value);
    }
    if (targetBefore.present) {
      map['target_before'] = Variable<double>(targetBefore.value);
    }
    if (targetAfter.present) {
      map['target_after'] = Variable<double>(targetAfter.value);
    }
    if (atr.present) {
      map['atr'] = Variable<double>(atr.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (pnlRealized.present) {
      map['pnl_realized'] = Variable<double>(pnlRealized.value);
    }
    if (relatedMarketContext.present) {
      map['related_market_context'] = Variable<String>(
        relatedMarketContext.value,
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<int>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventsCompanion(')
          ..write('id: $id, ')
          ..write('tradeId: $tradeId, ')
          ..write('scopeType: $scopeType, ')
          ..write('legId: $legId, ')
          ..write('eventType: $eventType, ')
          ..write('eventTime: $eventTime, ')
          ..write('title: $title, ')
          ..write('note: $note, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('notional: $notional, ')
          ..write('riskDelta: $riskDelta, ')
          ..write('stopLossBefore: $stopLossBefore, ')
          ..write('stopLossAfter: $stopLossAfter, ')
          ..write('targetBefore: $targetBefore, ')
          ..write('targetAfter: $targetAfter, ')
          ..write('atr: $atr, ')
          ..write('reason: $reason, ')
          ..write('pnlRealized: $pnlRealized, ')
          ..write('relatedMarketContext: $relatedMarketContext, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EventAttachmentsTable extends EventAttachments
    with TableInfo<$EventAttachmentsTable, EventAttachment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EventAttachmentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _eventIdMeta = const VerificationMeta(
    'eventId',
  );
  @override
  late final GeneratedColumn<String> eventId = GeneratedColumn<String>(
    'event_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES events (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _relativePathMeta = const VerificationMeta(
    'relativePath',
  );
  @override
  late final GeneratedColumn<String> relativePath = GeneratedColumn<String>(
    'relative_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _originalNameMeta = const VerificationMeta(
    'originalName',
  );
  @override
  late final GeneratedColumn<String> originalName = GeneratedColumn<String>(
    'original_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _mimeTypeMeta = const VerificationMeta(
    'mimeType',
  );
  @override
  late final GeneratedColumn<String> mimeType = GeneratedColumn<String>(
    'mime_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    eventId,
    relativePath,
    originalName,
    mimeType,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'event_attachments';
  @override
  VerificationContext validateIntegrity(
    Insertable<EventAttachment> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('event_id')) {
      context.handle(
        _eventIdMeta,
        eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta),
      );
    } else if (isInserting) {
      context.missing(_eventIdMeta);
    }
    if (data.containsKey('relative_path')) {
      context.handle(
        _relativePathMeta,
        relativePath.isAcceptableOrUnknown(
          data['relative_path']!,
          _relativePathMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_relativePathMeta);
    }
    if (data.containsKey('original_name')) {
      context.handle(
        _originalNameMeta,
        originalName.isAcceptableOrUnknown(
          data['original_name']!,
          _originalNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalNameMeta);
    }
    if (data.containsKey('mime_type')) {
      context.handle(
        _mimeTypeMeta,
        mimeType.isAcceptableOrUnknown(data['mime_type']!, _mimeTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_mimeTypeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EventAttachment map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EventAttachment(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      eventId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}event_id'],
      )!,
      relativePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}relative_path'],
      )!,
      originalName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_name'],
      )!,
      mimeType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}mime_type'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $EventAttachmentsTable createAlias(String alias) {
    return $EventAttachmentsTable(attachedDatabase, alias);
  }
}

class EventAttachment extends DataClass implements Insertable<EventAttachment> {
  final String id;
  final String eventId;
  final String relativePath;
  final String originalName;
  final String mimeType;
  final int createdAt;
  const EventAttachment({
    required this.id,
    required this.eventId,
    required this.relativePath,
    required this.originalName,
    required this.mimeType,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['event_id'] = Variable<String>(eventId);
    map['relative_path'] = Variable<String>(relativePath);
    map['original_name'] = Variable<String>(originalName);
    map['mime_type'] = Variable<String>(mimeType);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  EventAttachmentsCompanion toCompanion(bool nullToAbsent) {
    return EventAttachmentsCompanion(
      id: Value(id),
      eventId: Value(eventId),
      relativePath: Value(relativePath),
      originalName: Value(originalName),
      mimeType: Value(mimeType),
      createdAt: Value(createdAt),
    );
  }

  factory EventAttachment.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EventAttachment(
      id: serializer.fromJson<String>(json['id']),
      eventId: serializer.fromJson<String>(json['eventId']),
      relativePath: serializer.fromJson<String>(json['relativePath']),
      originalName: serializer.fromJson<String>(json['originalName']),
      mimeType: serializer.fromJson<String>(json['mimeType']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'eventId': serializer.toJson<String>(eventId),
      'relativePath': serializer.toJson<String>(relativePath),
      'originalName': serializer.toJson<String>(originalName),
      'mimeType': serializer.toJson<String>(mimeType),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  EventAttachment copyWith({
    String? id,
    String? eventId,
    String? relativePath,
    String? originalName,
    String? mimeType,
    int? createdAt,
  }) => EventAttachment(
    id: id ?? this.id,
    eventId: eventId ?? this.eventId,
    relativePath: relativePath ?? this.relativePath,
    originalName: originalName ?? this.originalName,
    mimeType: mimeType ?? this.mimeType,
    createdAt: createdAt ?? this.createdAt,
  );
  EventAttachment copyWithCompanion(EventAttachmentsCompanion data) {
    return EventAttachment(
      id: data.id.present ? data.id.value : this.id,
      eventId: data.eventId.present ? data.eventId.value : this.eventId,
      relativePath: data.relativePath.present
          ? data.relativePath.value
          : this.relativePath,
      originalName: data.originalName.present
          ? data.originalName.value
          : this.originalName,
      mimeType: data.mimeType.present ? data.mimeType.value : this.mimeType,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EventAttachment(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('relativePath: $relativePath, ')
          ..write('originalName: $originalName, ')
          ..write('mimeType: $mimeType, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, eventId, relativePath, originalName, mimeType, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EventAttachment &&
          other.id == this.id &&
          other.eventId == this.eventId &&
          other.relativePath == this.relativePath &&
          other.originalName == this.originalName &&
          other.mimeType == this.mimeType &&
          other.createdAt == this.createdAt);
}

class EventAttachmentsCompanion extends UpdateCompanion<EventAttachment> {
  final Value<String> id;
  final Value<String> eventId;
  final Value<String> relativePath;
  final Value<String> originalName;
  final Value<String> mimeType;
  final Value<int> createdAt;
  final Value<int> rowid;
  const EventAttachmentsCompanion({
    this.id = const Value.absent(),
    this.eventId = const Value.absent(),
    this.relativePath = const Value.absent(),
    this.originalName = const Value.absent(),
    this.mimeType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EventAttachmentsCompanion.insert({
    required String id,
    required String eventId,
    required String relativePath,
    required String originalName,
    required String mimeType,
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       eventId = Value(eventId),
       relativePath = Value(relativePath),
       originalName = Value(originalName),
       mimeType = Value(mimeType),
       createdAt = Value(createdAt);
  static Insertable<EventAttachment> custom({
    Expression<String>? id,
    Expression<String>? eventId,
    Expression<String>? relativePath,
    Expression<String>? originalName,
    Expression<String>? mimeType,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (eventId != null) 'event_id': eventId,
      if (relativePath != null) 'relative_path': relativePath,
      if (originalName != null) 'original_name': originalName,
      if (mimeType != null) 'mime_type': mimeType,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EventAttachmentsCompanion copyWith({
    Value<String>? id,
    Value<String>? eventId,
    Value<String>? relativePath,
    Value<String>? originalName,
    Value<String>? mimeType,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return EventAttachmentsCompanion(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      relativePath: relativePath ?? this.relativePath,
      originalName: originalName ?? this.originalName,
      mimeType: mimeType ?? this.mimeType,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (eventId.present) {
      map['event_id'] = Variable<String>(eventId.value);
    }
    if (relativePath.present) {
      map['relative_path'] = Variable<String>(relativePath.value);
    }
    if (originalName.present) {
      map['original_name'] = Variable<String>(originalName.value);
    }
    if (mimeType.present) {
      map['mime_type'] = Variable<String>(mimeType.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EventAttachmentsCompanion(')
          ..write('id: $id, ')
          ..write('eventId: $eventId, ')
          ..write('relativePath: $relativePath, ')
          ..write('originalName: $originalName, ')
          ..write('mimeType: $mimeType, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TagsTable extends Tags with TableInfo<$TagsTable, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tagTypeMeta = const VerificationMeta(
    'tagType',
  );
  @override
  late final GeneratedColumn<String> tagType = GeneratedColumn<String>(
    'tag_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, tagType, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<Tag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('tag_type')) {
      context.handle(
        _tagTypeMeta,
        tagType.isAcceptableOrUnknown(data['tag_type']!, _tagTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_tagTypeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {name, tagType},
  ];
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tag(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      tagType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_type'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $TagsTable createAlias(String alias) {
    return $TagsTable(attachedDatabase, alias);
  }
}

class Tag extends DataClass implements Insertable<Tag> {
  final String id;
  final String name;
  final String tagType;
  final int createdAt;
  const Tag({
    required this.id,
    required this.name,
    required this.tagType,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['tag_type'] = Variable<String>(tagType);
    map['created_at'] = Variable<int>(createdAt);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: Value(id),
      name: Value(name),
      tagType: Value(tagType),
      createdAt: Value(createdAt),
    );
  }

  factory Tag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      tagType: serializer.fromJson<String>(json['tagType']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'tagType': serializer.toJson<String>(tagType),
      'createdAt': serializer.toJson<int>(createdAt),
    };
  }

  Tag copyWith({String? id, String? name, String? tagType, int? createdAt}) =>
      Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        tagType: tagType ?? this.tagType,
        createdAt: createdAt ?? this.createdAt,
      );
  Tag copyWithCompanion(TagsCompanion data) {
    return Tag(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      tagType: data.tagType.present ? data.tagType.value : this.tagType,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('tagType: $tagType, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, tagType, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.id == this.id &&
          other.name == this.name &&
          other.tagType == this.tagType &&
          other.createdAt == this.createdAt);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> tagType;
  final Value<int> createdAt;
  final Value<int> rowid;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.tagType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TagsCompanion.insert({
    required String id,
    required String name,
    required String tagType,
    required int createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       tagType = Value(tagType),
       createdAt = Value(createdAt);
  static Insertable<Tag> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? tagType,
    Expression<int>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (tagType != null) 'tag_type': tagType,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TagsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? tagType,
    Value<int>? createdAt,
    Value<int>? rowid,
  }) {
    return TagsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      tagType: tagType ?? this.tagType,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (tagType.present) {
      map['tag_type'] = Variable<String>(tagType.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('tagType: $tagType, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TradeTagRelationsTable extends TradeTagRelations
    with TableInfo<$TradeTagRelationsTable, TradeTagRelation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TradeTagRelationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tradeIdMeta = const VerificationMeta(
    'tradeId',
  );
  @override
  late final GeneratedColumn<String> tradeId = GeneratedColumn<String>(
    'trade_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES trades (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<String> tagId = GeneratedColumn<String>(
    'tag_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tags (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [tradeId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'trade_tag_relations';
  @override
  VerificationContext validateIntegrity(
    Insertable<TradeTagRelation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('trade_id')) {
      context.handle(
        _tradeIdMeta,
        tradeId.isAcceptableOrUnknown(data['trade_id']!, _tradeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tradeIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta,
        tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tradeId, tagId};
  @override
  TradeTagRelation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TradeTagRelation(
      tradeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trade_id'],
      )!,
      tagId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_id'],
      )!,
    );
  }

  @override
  $TradeTagRelationsTable createAlias(String alias) {
    return $TradeTagRelationsTable(attachedDatabase, alias);
  }
}

class TradeTagRelation extends DataClass
    implements Insertable<TradeTagRelation> {
  final String tradeId;
  final String tagId;
  const TradeTagRelation({required this.tradeId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['trade_id'] = Variable<String>(tradeId);
    map['tag_id'] = Variable<String>(tagId);
    return map;
  }

  TradeTagRelationsCompanion toCompanion(bool nullToAbsent) {
    return TradeTagRelationsCompanion(
      tradeId: Value(tradeId),
      tagId: Value(tagId),
    );
  }

  factory TradeTagRelation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TradeTagRelation(
      tradeId: serializer.fromJson<String>(json['tradeId']),
      tagId: serializer.fromJson<String>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tradeId': serializer.toJson<String>(tradeId),
      'tagId': serializer.toJson<String>(tagId),
    };
  }

  TradeTagRelation copyWith({String? tradeId, String? tagId}) =>
      TradeTagRelation(
        tradeId: tradeId ?? this.tradeId,
        tagId: tagId ?? this.tagId,
      );
  TradeTagRelation copyWithCompanion(TradeTagRelationsCompanion data) {
    return TradeTagRelation(
      tradeId: data.tradeId.present ? data.tradeId.value : this.tradeId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TradeTagRelation(')
          ..write('tradeId: $tradeId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(tradeId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TradeTagRelation &&
          other.tradeId == this.tradeId &&
          other.tagId == this.tagId);
}

class TradeTagRelationsCompanion extends UpdateCompanion<TradeTagRelation> {
  final Value<String> tradeId;
  final Value<String> tagId;
  final Value<int> rowid;
  const TradeTagRelationsCompanion({
    this.tradeId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TradeTagRelationsCompanion.insert({
    required String tradeId,
    required String tagId,
    this.rowid = const Value.absent(),
  }) : tradeId = Value(tradeId),
       tagId = Value(tagId);
  static Insertable<TradeTagRelation> custom({
    Expression<String>? tradeId,
    Expression<String>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (tradeId != null) 'trade_id': tradeId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TradeTagRelationsCompanion copyWith({
    Value<String>? tradeId,
    Value<String>? tagId,
    Value<int>? rowid,
  }) {
    return TradeTagRelationsCompanion(
      tradeId: tradeId ?? this.tradeId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tradeId.present) {
      map['trade_id'] = Variable<String>(tradeId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TradeTagRelationsCompanion(')
          ..write('tradeId: $tradeId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReviewTagRelationsTable extends ReviewTagRelations
    with TableInfo<$ReviewTagRelationsTable, ReviewTagRelation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReviewTagRelationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _tradeIdMeta = const VerificationMeta(
    'tradeId',
  );
  @override
  late final GeneratedColumn<String> tradeId = GeneratedColumn<String>(
    'trade_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES trades (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<String> tagId = GeneratedColumn<String>(
    'tag_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tags (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [tradeId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'review_tag_relations';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReviewTagRelation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('trade_id')) {
      context.handle(
        _tradeIdMeta,
        tradeId.isAcceptableOrUnknown(data['trade_id']!, _tradeIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tradeIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta,
        tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {tradeId, tagId};
  @override
  ReviewTagRelation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReviewTagRelation(
      tradeId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trade_id'],
      )!,
      tagId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_id'],
      )!,
    );
  }

  @override
  $ReviewTagRelationsTable createAlias(String alias) {
    return $ReviewTagRelationsTable(attachedDatabase, alias);
  }
}

class ReviewTagRelation extends DataClass
    implements Insertable<ReviewTagRelation> {
  final String tradeId;
  final String tagId;
  const ReviewTagRelation({required this.tradeId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['trade_id'] = Variable<String>(tradeId);
    map['tag_id'] = Variable<String>(tagId);
    return map;
  }

  ReviewTagRelationsCompanion toCompanion(bool nullToAbsent) {
    return ReviewTagRelationsCompanion(
      tradeId: Value(tradeId),
      tagId: Value(tagId),
    );
  }

  factory ReviewTagRelation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReviewTagRelation(
      tradeId: serializer.fromJson<String>(json['tradeId']),
      tagId: serializer.fromJson<String>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'tradeId': serializer.toJson<String>(tradeId),
      'tagId': serializer.toJson<String>(tagId),
    };
  }

  ReviewTagRelation copyWith({String? tradeId, String? tagId}) =>
      ReviewTagRelation(
        tradeId: tradeId ?? this.tradeId,
        tagId: tagId ?? this.tagId,
      );
  ReviewTagRelation copyWithCompanion(ReviewTagRelationsCompanion data) {
    return ReviewTagRelation(
      tradeId: data.tradeId.present ? data.tradeId.value : this.tradeId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReviewTagRelation(')
          ..write('tradeId: $tradeId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(tradeId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReviewTagRelation &&
          other.tradeId == this.tradeId &&
          other.tagId == this.tagId);
}

class ReviewTagRelationsCompanion extends UpdateCompanion<ReviewTagRelation> {
  final Value<String> tradeId;
  final Value<String> tagId;
  final Value<int> rowid;
  const ReviewTagRelationsCompanion({
    this.tradeId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ReviewTagRelationsCompanion.insert({
    required String tradeId,
    required String tagId,
    this.rowid = const Value.absent(),
  }) : tradeId = Value(tradeId),
       tagId = Value(tagId);
  static Insertable<ReviewTagRelation> custom({
    Expression<String>? tradeId,
    Expression<String>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (tradeId != null) 'trade_id': tradeId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ReviewTagRelationsCompanion copyWith({
    Value<String>? tradeId,
    Value<String>? tagId,
    Value<int>? rowid,
  }) {
    return ReviewTagRelationsCompanion(
      tradeId: tradeId ?? this.tradeId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (tradeId.present) {
      map['trade_id'] = Variable<String>(tradeId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReviewTagRelationsCompanion(')
          ..write('tradeId: $tradeId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TradesTable trades = $TradesTable(this);
  late final $LegsTable legs = $LegsTable(this);
  late final $EventsTable events = $EventsTable(this);
  late final $EventAttachmentsTable eventAttachments = $EventAttachmentsTable(
    this,
  );
  late final $TagsTable tags = $TagsTable(this);
  late final $TradeTagRelationsTable tradeTagRelations =
      $TradeTagRelationsTable(this);
  late final $ReviewTagRelationsTable reviewTagRelations =
      $ReviewTagRelationsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    trades,
    legs,
    events,
    eventAttachments,
    tags,
    tradeTagRelations,
    reviewTagRelations,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'trades',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('legs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'trades',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('events', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'legs',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('events', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'events',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('event_attachments', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'trades',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('trade_tag_relations', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tags',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('trade_tag_relations', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'trades',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('review_tag_relations', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tags',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('review_tag_relations', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$TradesTableCreateCompanionBuilder =
    TradesCompanion Function({
      required String id,
      required String title,
      required String market,
      required String strategyType,
      required String structureType,
      Value<String?> thesis,
      required String entryReason,
      Value<String?> expectation,
      Value<String?> invalidationCondition,
      required String status,
      required int startTime,
      Value<int?> endTime,
      Value<double?> summaryPnl,
      Value<String?> reviewText,
      Value<int?> reviewScoreExecution,
      Value<int?> reviewScoreResult,
      Value<String?> reviewPlanFollowed,
      Value<String?> finalExitReason,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$TradesTableUpdateCompanionBuilder =
    TradesCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> market,
      Value<String> strategyType,
      Value<String> structureType,
      Value<String?> thesis,
      Value<String> entryReason,
      Value<String?> expectation,
      Value<String?> invalidationCondition,
      Value<String> status,
      Value<int> startTime,
      Value<int?> endTime,
      Value<double?> summaryPnl,
      Value<String?> reviewText,
      Value<int?> reviewScoreExecution,
      Value<int?> reviewScoreResult,
      Value<String?> reviewPlanFollowed,
      Value<String?> finalExitReason,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

final class $$TradesTableReferences
    extends BaseReferences<_$AppDatabase, $TradesTable, Trade> {
  $$TradesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$LegsTable, List<Leg>> _legsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.legs,
    aliasName: $_aliasNameGenerator(db.trades.id, db.legs.tradeId),
  );

  $$LegsTableProcessedTableManager get legsRefs {
    final manager = $$LegsTableTableManager(
      $_db,
      $_db.legs,
    ).filter((f) => f.tradeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_legsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$EventsTable, List<Event>> _eventsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.events,
    aliasName: $_aliasNameGenerator(db.trades.id, db.events.tradeId),
  );

  $$EventsTableProcessedTableManager get eventsRefs {
    final manager = $$EventsTableTableManager(
      $_db,
      $_db.events,
    ).filter((f) => f.tradeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TradeTagRelationsTable, List<TradeTagRelation>>
  _tradeTagRelationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.tradeTagRelations,
        aliasName: $_aliasNameGenerator(
          db.trades.id,
          db.tradeTagRelations.tradeId,
        ),
      );

  $$TradeTagRelationsTableProcessedTableManager get tradeTagRelationsRefs {
    final manager = $$TradeTagRelationsTableTableManager(
      $_db,
      $_db.tradeTagRelations,
    ).filter((f) => f.tradeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _tradeTagRelationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ReviewTagRelationsTable, List<ReviewTagRelation>>
  _reviewTagRelationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.reviewTagRelations,
        aliasName: $_aliasNameGenerator(
          db.trades.id,
          db.reviewTagRelations.tradeId,
        ),
      );

  $$ReviewTagRelationsTableProcessedTableManager get reviewTagRelationsRefs {
    final manager = $$ReviewTagRelationsTableTableManager(
      $_db,
      $_db.reviewTagRelations,
    ).filter((f) => f.tradeId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _reviewTagRelationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TradesTableFilterComposer
    extends Composer<_$AppDatabase, $TradesTable> {
  $$TradesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get market => $composableBuilder(
    column: $table.market,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get strategyType => $composableBuilder(
    column: $table.strategyType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get structureType => $composableBuilder(
    column: $table.structureType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thesis => $composableBuilder(
    column: $table.thesis,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get entryReason => $composableBuilder(
    column: $table.entryReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get expectation => $composableBuilder(
    column: $table.expectation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get invalidationCondition => $composableBuilder(
    column: $table.invalidationCondition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get summaryPnl => $composableBuilder(
    column: $table.summaryPnl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reviewText => $composableBuilder(
    column: $table.reviewText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reviewScoreExecution => $composableBuilder(
    column: $table.reviewScoreExecution,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get reviewScoreResult => $composableBuilder(
    column: $table.reviewScoreResult,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reviewPlanFollowed => $composableBuilder(
    column: $table.reviewPlanFollowed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get finalExitReason => $composableBuilder(
    column: $table.finalExitReason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> legsRefs(
    Expression<bool> Function($$LegsTableFilterComposer f) f,
  ) {
    final $$LegsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.legs,
      getReferencedColumn: (t) => t.tradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LegsTableFilterComposer(
            $db: $db,
            $table: $db.legs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> eventsRefs(
    Expression<bool> Function($$EventsTableFilterComposer f) f,
  ) {
    final $$EventsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.tradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableFilterComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> tradeTagRelationsRefs(
    Expression<bool> Function($$TradeTagRelationsTableFilterComposer f) f,
  ) {
    final $$TradeTagRelationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tradeTagRelations,
      getReferencedColumn: (t) => t.tradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradeTagRelationsTableFilterComposer(
            $db: $db,
            $table: $db.tradeTagRelations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> reviewTagRelationsRefs(
    Expression<bool> Function($$ReviewTagRelationsTableFilterComposer f) f,
  ) {
    final $$ReviewTagRelationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.reviewTagRelations,
      getReferencedColumn: (t) => t.tradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewTagRelationsTableFilterComposer(
            $db: $db,
            $table: $db.reviewTagRelations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TradesTableOrderingComposer
    extends Composer<_$AppDatabase, $TradesTable> {
  $$TradesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get market => $composableBuilder(
    column: $table.market,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get strategyType => $composableBuilder(
    column: $table.strategyType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get structureType => $composableBuilder(
    column: $table.structureType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thesis => $composableBuilder(
    column: $table.thesis,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get entryReason => $composableBuilder(
    column: $table.entryReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get expectation => $composableBuilder(
    column: $table.expectation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get invalidationCondition => $composableBuilder(
    column: $table.invalidationCondition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get summaryPnl => $composableBuilder(
    column: $table.summaryPnl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reviewText => $composableBuilder(
    column: $table.reviewText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reviewScoreExecution => $composableBuilder(
    column: $table.reviewScoreExecution,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get reviewScoreResult => $composableBuilder(
    column: $table.reviewScoreResult,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reviewPlanFollowed => $composableBuilder(
    column: $table.reviewPlanFollowed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get finalExitReason => $composableBuilder(
    column: $table.finalExitReason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TradesTableAnnotationComposer
    extends Composer<_$AppDatabase, $TradesTable> {
  $$TradesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get market =>
      $composableBuilder(column: $table.market, builder: (column) => column);

  GeneratedColumn<String> get strategyType => $composableBuilder(
    column: $table.strategyType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get structureType => $composableBuilder(
    column: $table.structureType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get thesis =>
      $composableBuilder(column: $table.thesis, builder: (column) => column);

  GeneratedColumn<String> get entryReason => $composableBuilder(
    column: $table.entryReason,
    builder: (column) => column,
  );

  GeneratedColumn<String> get expectation => $composableBuilder(
    column: $table.expectation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get invalidationCondition => $composableBuilder(
    column: $table.invalidationCondition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<int> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<int> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<double> get summaryPnl => $composableBuilder(
    column: $table.summaryPnl,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reviewText => $composableBuilder(
    column: $table.reviewText,
    builder: (column) => column,
  );

  GeneratedColumn<int> get reviewScoreExecution => $composableBuilder(
    column: $table.reviewScoreExecution,
    builder: (column) => column,
  );

  GeneratedColumn<int> get reviewScoreResult => $composableBuilder(
    column: $table.reviewScoreResult,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reviewPlanFollowed => $composableBuilder(
    column: $table.reviewPlanFollowed,
    builder: (column) => column,
  );

  GeneratedColumn<String> get finalExitReason => $composableBuilder(
    column: $table.finalExitReason,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> legsRefs<T extends Object>(
    Expression<T> Function($$LegsTableAnnotationComposer a) f,
  ) {
    final $$LegsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.legs,
      getReferencedColumn: (t) => t.tradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LegsTableAnnotationComposer(
            $db: $db,
            $table: $db.legs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> eventsRefs<T extends Object>(
    Expression<T> Function($$EventsTableAnnotationComposer a) f,
  ) {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.tradeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableAnnotationComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> tradeTagRelationsRefs<T extends Object>(
    Expression<T> Function($$TradeTagRelationsTableAnnotationComposer a) f,
  ) {
    final $$TradeTagRelationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.tradeTagRelations,
          getReferencedColumn: (t) => t.tradeId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TradeTagRelationsTableAnnotationComposer(
                $db: $db,
                $table: $db.tradeTagRelations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> reviewTagRelationsRefs<T extends Object>(
    Expression<T> Function($$ReviewTagRelationsTableAnnotationComposer a) f,
  ) {
    final $$ReviewTagRelationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.reviewTagRelations,
          getReferencedColumn: (t) => t.tradeId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ReviewTagRelationsTableAnnotationComposer(
                $db: $db,
                $table: $db.reviewTagRelations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TradesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TradesTable,
          Trade,
          $$TradesTableFilterComposer,
          $$TradesTableOrderingComposer,
          $$TradesTableAnnotationComposer,
          $$TradesTableCreateCompanionBuilder,
          $$TradesTableUpdateCompanionBuilder,
          (Trade, $$TradesTableReferences),
          Trade,
          PrefetchHooks Function({
            bool legsRefs,
            bool eventsRefs,
            bool tradeTagRelationsRefs,
            bool reviewTagRelationsRefs,
          })
        > {
  $$TradesTableTableManager(_$AppDatabase db, $TradesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TradesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TradesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TradesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> market = const Value.absent(),
                Value<String> strategyType = const Value.absent(),
                Value<String> structureType = const Value.absent(),
                Value<String?> thesis = const Value.absent(),
                Value<String> entryReason = const Value.absent(),
                Value<String?> expectation = const Value.absent(),
                Value<String?> invalidationCondition = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<int> startTime = const Value.absent(),
                Value<int?> endTime = const Value.absent(),
                Value<double?> summaryPnl = const Value.absent(),
                Value<String?> reviewText = const Value.absent(),
                Value<int?> reviewScoreExecution = const Value.absent(),
                Value<int?> reviewScoreResult = const Value.absent(),
                Value<String?> reviewPlanFollowed = const Value.absent(),
                Value<String?> finalExitReason = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TradesCompanion(
                id: id,
                title: title,
                market: market,
                strategyType: strategyType,
                structureType: structureType,
                thesis: thesis,
                entryReason: entryReason,
                expectation: expectation,
                invalidationCondition: invalidationCondition,
                status: status,
                startTime: startTime,
                endTime: endTime,
                summaryPnl: summaryPnl,
                reviewText: reviewText,
                reviewScoreExecution: reviewScoreExecution,
                reviewScoreResult: reviewScoreResult,
                reviewPlanFollowed: reviewPlanFollowed,
                finalExitReason: finalExitReason,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String market,
                required String strategyType,
                required String structureType,
                Value<String?> thesis = const Value.absent(),
                required String entryReason,
                Value<String?> expectation = const Value.absent(),
                Value<String?> invalidationCondition = const Value.absent(),
                required String status,
                required int startTime,
                Value<int?> endTime = const Value.absent(),
                Value<double?> summaryPnl = const Value.absent(),
                Value<String?> reviewText = const Value.absent(),
                Value<int?> reviewScoreExecution = const Value.absent(),
                Value<int?> reviewScoreResult = const Value.absent(),
                Value<String?> reviewPlanFollowed = const Value.absent(),
                Value<String?> finalExitReason = const Value.absent(),
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => TradesCompanion.insert(
                id: id,
                title: title,
                market: market,
                strategyType: strategyType,
                structureType: structureType,
                thesis: thesis,
                entryReason: entryReason,
                expectation: expectation,
                invalidationCondition: invalidationCondition,
                status: status,
                startTime: startTime,
                endTime: endTime,
                summaryPnl: summaryPnl,
                reviewText: reviewText,
                reviewScoreExecution: reviewScoreExecution,
                reviewScoreResult: reviewScoreResult,
                reviewPlanFollowed: reviewPlanFollowed,
                finalExitReason: finalExitReason,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$TradesTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                legsRefs = false,
                eventsRefs = false,
                tradeTagRelationsRefs = false,
                reviewTagRelationsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (legsRefs) db.legs,
                    if (eventsRefs) db.events,
                    if (tradeTagRelationsRefs) db.tradeTagRelations,
                    if (reviewTagRelationsRefs) db.reviewTagRelations,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (legsRefs)
                        await $_getPrefetchedData<Trade, $TradesTable, Leg>(
                          currentTable: table,
                          referencedTable: $$TradesTableReferences
                              ._legsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TradesTableReferences(db, table, p0).legsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.tradeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (eventsRefs)
                        await $_getPrefetchedData<Trade, $TradesTable, Event>(
                          currentTable: table,
                          referencedTable: $$TradesTableReferences
                              ._eventsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TradesTableReferences(db, table, p0).eventsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.tradeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (tradeTagRelationsRefs)
                        await $_getPrefetchedData<
                          Trade,
                          $TradesTable,
                          TradeTagRelation
                        >(
                          currentTable: table,
                          referencedTable: $$TradesTableReferences
                              ._tradeTagRelationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TradesTableReferences(
                                db,
                                table,
                                p0,
                              ).tradeTagRelationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.tradeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (reviewTagRelationsRefs)
                        await $_getPrefetchedData<
                          Trade,
                          $TradesTable,
                          ReviewTagRelation
                        >(
                          currentTable: table,
                          referencedTable: $$TradesTableReferences
                              ._reviewTagRelationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$TradesTableReferences(
                                db,
                                table,
                                p0,
                              ).reviewTagRelationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.tradeId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TradesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TradesTable,
      Trade,
      $$TradesTableFilterComposer,
      $$TradesTableOrderingComposer,
      $$TradesTableAnnotationComposer,
      $$TradesTableCreateCompanionBuilder,
      $$TradesTableUpdateCompanionBuilder,
      (Trade, $$TradesTableReferences),
      Trade,
      PrefetchHooks Function({
        bool legsRefs,
        bool eventsRefs,
        bool tradeTagRelationsRefs,
        bool reviewTagRelationsRefs,
      })
    >;
typedef $$LegsTableCreateCompanionBuilder =
    LegsCompanion Function({
      required String id,
      required String tradeId,
      required String symbol,
      Value<String?> name,
      required String direction,
      required String instrumentType,
      Value<double?> leverage,
      Value<String?> account,
      Value<String?> currency,
      Value<double?> initialPlanEntryPrice,
      Value<double?> initialStopLoss,
      Value<double?> initialRiskBudget,
      Value<double?> initialAtr,
      Value<String?> note,
      Value<int> sortOrder,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$LegsTableUpdateCompanionBuilder =
    LegsCompanion Function({
      Value<String> id,
      Value<String> tradeId,
      Value<String> symbol,
      Value<String?> name,
      Value<String> direction,
      Value<String> instrumentType,
      Value<double?> leverage,
      Value<String?> account,
      Value<String?> currency,
      Value<double?> initialPlanEntryPrice,
      Value<double?> initialStopLoss,
      Value<double?> initialRiskBudget,
      Value<double?> initialAtr,
      Value<String?> note,
      Value<int> sortOrder,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

final class $$LegsTableReferences
    extends BaseReferences<_$AppDatabase, $LegsTable, Leg> {
  $$LegsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TradesTable _tradeIdTable(_$AppDatabase db) => db.trades.createAlias(
    $_aliasNameGenerator(db.legs.tradeId, db.trades.id),
  );

  $$TradesTableProcessedTableManager get tradeId {
    final $_column = $_itemColumn<String>('trade_id')!;

    final manager = $$TradesTableTableManager(
      $_db,
      $_db.trades,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tradeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$EventsTable, List<Event>> _eventsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.events,
    aliasName: $_aliasNameGenerator(db.legs.id, db.events.legId),
  );

  $$EventsTableProcessedTableManager get eventsRefs {
    final manager = $$EventsTableTableManager(
      $_db,
      $_db.events,
    ).filter((f) => f.legId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_eventsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$LegsTableFilterComposer extends Composer<_$AppDatabase, $LegsTable> {
  $$LegsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get direction => $composableBuilder(
    column: $table.direction,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get instrumentType => $composableBuilder(
    column: $table.instrumentType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get leverage => $composableBuilder(
    column: $table.leverage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get account => $composableBuilder(
    column: $table.account,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get initialPlanEntryPrice => $composableBuilder(
    column: $table.initialPlanEntryPrice,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get initialStopLoss => $composableBuilder(
    column: $table.initialStopLoss,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get initialRiskBudget => $composableBuilder(
    column: $table.initialRiskBudget,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get initialAtr => $composableBuilder(
    column: $table.initialAtr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$TradesTableFilterComposer get tradeId {
    final $$TradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableFilterComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> eventsRefs(
    Expression<bool> Function($$EventsTableFilterComposer f) f,
  ) {
    final $$EventsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.legId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableFilterComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LegsTableOrderingComposer extends Composer<_$AppDatabase, $LegsTable> {
  $$LegsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get direction => $composableBuilder(
    column: $table.direction,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get instrumentType => $composableBuilder(
    column: $table.instrumentType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get leverage => $composableBuilder(
    column: $table.leverage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get account => $composableBuilder(
    column: $table.account,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currency => $composableBuilder(
    column: $table.currency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get initialPlanEntryPrice => $composableBuilder(
    column: $table.initialPlanEntryPrice,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get initialStopLoss => $composableBuilder(
    column: $table.initialStopLoss,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get initialRiskBudget => $composableBuilder(
    column: $table.initialRiskBudget,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get initialAtr => $composableBuilder(
    column: $table.initialAtr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$TradesTableOrderingComposer get tradeId {
    final $$TradesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableOrderingComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LegsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LegsTable> {
  $$LegsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get direction =>
      $composableBuilder(column: $table.direction, builder: (column) => column);

  GeneratedColumn<String> get instrumentType => $composableBuilder(
    column: $table.instrumentType,
    builder: (column) => column,
  );

  GeneratedColumn<double> get leverage =>
      $composableBuilder(column: $table.leverage, builder: (column) => column);

  GeneratedColumn<String> get account =>
      $composableBuilder(column: $table.account, builder: (column) => column);

  GeneratedColumn<String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<double> get initialPlanEntryPrice => $composableBuilder(
    column: $table.initialPlanEntryPrice,
    builder: (column) => column,
  );

  GeneratedColumn<double> get initialStopLoss => $composableBuilder(
    column: $table.initialStopLoss,
    builder: (column) => column,
  );

  GeneratedColumn<double> get initialRiskBudget => $composableBuilder(
    column: $table.initialRiskBudget,
    builder: (column) => column,
  );

  GeneratedColumn<double> get initialAtr => $composableBuilder(
    column: $table.initialAtr,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$TradesTableAnnotationComposer get tradeId {
    final $$TradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableAnnotationComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> eventsRefs<T extends Object>(
    Expression<T> Function($$EventsTableAnnotationComposer a) f,
  ) {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.legId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableAnnotationComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$LegsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LegsTable,
          Leg,
          $$LegsTableFilterComposer,
          $$LegsTableOrderingComposer,
          $$LegsTableAnnotationComposer,
          $$LegsTableCreateCompanionBuilder,
          $$LegsTableUpdateCompanionBuilder,
          (Leg, $$LegsTableReferences),
          Leg,
          PrefetchHooks Function({bool tradeId, bool eventsRefs})
        > {
  $$LegsTableTableManager(_$AppDatabase db, $LegsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LegsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LegsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LegsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> tradeId = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<String?> name = const Value.absent(),
                Value<String> direction = const Value.absent(),
                Value<String> instrumentType = const Value.absent(),
                Value<double?> leverage = const Value.absent(),
                Value<String?> account = const Value.absent(),
                Value<String?> currency = const Value.absent(),
                Value<double?> initialPlanEntryPrice = const Value.absent(),
                Value<double?> initialStopLoss = const Value.absent(),
                Value<double?> initialRiskBudget = const Value.absent(),
                Value<double?> initialAtr = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => LegsCompanion(
                id: id,
                tradeId: tradeId,
                symbol: symbol,
                name: name,
                direction: direction,
                instrumentType: instrumentType,
                leverage: leverage,
                account: account,
                currency: currency,
                initialPlanEntryPrice: initialPlanEntryPrice,
                initialStopLoss: initialStopLoss,
                initialRiskBudget: initialRiskBudget,
                initialAtr: initialAtr,
                note: note,
                sortOrder: sortOrder,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String tradeId,
                required String symbol,
                Value<String?> name = const Value.absent(),
                required String direction,
                required String instrumentType,
                Value<double?> leverage = const Value.absent(),
                Value<String?> account = const Value.absent(),
                Value<String?> currency = const Value.absent(),
                Value<double?> initialPlanEntryPrice = const Value.absent(),
                Value<double?> initialStopLoss = const Value.absent(),
                Value<double?> initialRiskBudget = const Value.absent(),
                Value<double?> initialAtr = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => LegsCompanion.insert(
                id: id,
                tradeId: tradeId,
                symbol: symbol,
                name: name,
                direction: direction,
                instrumentType: instrumentType,
                leverage: leverage,
                account: account,
                currency: currency,
                initialPlanEntryPrice: initialPlanEntryPrice,
                initialStopLoss: initialStopLoss,
                initialRiskBudget: initialRiskBudget,
                initialAtr: initialAtr,
                note: note,
                sortOrder: sortOrder,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$LegsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({tradeId = false, eventsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (eventsRefs) db.events],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (tradeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tradeId,
                                referencedTable: $$LegsTableReferences
                                    ._tradeIdTable(db),
                                referencedColumn: $$LegsTableReferences
                                    ._tradeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (eventsRefs)
                    await $_getPrefetchedData<Leg, $LegsTable, Event>(
                      currentTable: table,
                      referencedTable: $$LegsTableReferences._eventsRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$LegsTableReferences(db, table, p0).eventsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.legId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$LegsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LegsTable,
      Leg,
      $$LegsTableFilterComposer,
      $$LegsTableOrderingComposer,
      $$LegsTableAnnotationComposer,
      $$LegsTableCreateCompanionBuilder,
      $$LegsTableUpdateCompanionBuilder,
      (Leg, $$LegsTableReferences),
      Leg,
      PrefetchHooks Function({bool tradeId, bool eventsRefs})
    >;
typedef $$EventsTableCreateCompanionBuilder =
    EventsCompanion Function({
      required String id,
      required String tradeId,
      required String scopeType,
      Value<String?> legId,
      required String eventType,
      required int eventTime,
      Value<String?> title,
      required String note,
      Value<double?> price,
      Value<double?> quantity,
      Value<double?> notional,
      Value<double?> riskDelta,
      Value<double?> stopLossBefore,
      Value<double?> stopLossAfter,
      Value<double?> targetBefore,
      Value<double?> targetAfter,
      Value<double?> atr,
      Value<String?> reason,
      Value<double?> pnlRealized,
      Value<String?> relatedMarketContext,
      required int createdAt,
      required int updatedAt,
      Value<int> rowid,
    });
typedef $$EventsTableUpdateCompanionBuilder =
    EventsCompanion Function({
      Value<String> id,
      Value<String> tradeId,
      Value<String> scopeType,
      Value<String?> legId,
      Value<String> eventType,
      Value<int> eventTime,
      Value<String?> title,
      Value<String> note,
      Value<double?> price,
      Value<double?> quantity,
      Value<double?> notional,
      Value<double?> riskDelta,
      Value<double?> stopLossBefore,
      Value<double?> stopLossAfter,
      Value<double?> targetBefore,
      Value<double?> targetAfter,
      Value<double?> atr,
      Value<String?> reason,
      Value<double?> pnlRealized,
      Value<String?> relatedMarketContext,
      Value<int> createdAt,
      Value<int> updatedAt,
      Value<int> rowid,
    });

final class $$EventsTableReferences
    extends BaseReferences<_$AppDatabase, $EventsTable, Event> {
  $$EventsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TradesTable _tradeIdTable(_$AppDatabase db) => db.trades.createAlias(
    $_aliasNameGenerator(db.events.tradeId, db.trades.id),
  );

  $$TradesTableProcessedTableManager get tradeId {
    final $_column = $_itemColumn<String>('trade_id')!;

    final manager = $$TradesTableTableManager(
      $_db,
      $_db.trades,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tradeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $LegsTable _legIdTable(_$AppDatabase db) =>
      db.legs.createAlias($_aliasNameGenerator(db.events.legId, db.legs.id));

  $$LegsTableProcessedTableManager? get legId {
    final $_column = $_itemColumn<String>('leg_id');
    if ($_column == null) return null;
    final manager = $$LegsTableTableManager(
      $_db,
      $_db.legs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_legIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$EventAttachmentsTable, List<EventAttachment>>
  _eventAttachmentsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.eventAttachments,
    aliasName: $_aliasNameGenerator(db.events.id, db.eventAttachments.eventId),
  );

  $$EventAttachmentsTableProcessedTableManager get eventAttachmentsRefs {
    final manager = $$EventAttachmentsTableTableManager(
      $_db,
      $_db.eventAttachments,
    ).filter((f) => f.eventId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _eventAttachmentsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$EventsTableFilterComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scopeType => $composableBuilder(
    column: $table.scopeType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get eventType => $composableBuilder(
    column: $table.eventType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get eventTime => $composableBuilder(
    column: $table.eventTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get notional => $composableBuilder(
    column: $table.notional,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get riskDelta => $composableBuilder(
    column: $table.riskDelta,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get stopLossBefore => $composableBuilder(
    column: $table.stopLossBefore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get stopLossAfter => $composableBuilder(
    column: $table.stopLossAfter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetBefore => $composableBuilder(
    column: $table.targetBefore,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get targetAfter => $composableBuilder(
    column: $table.targetAfter,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get atr => $composableBuilder(
    column: $table.atr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get pnlRealized => $composableBuilder(
    column: $table.pnlRealized,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get relatedMarketContext => $composableBuilder(
    column: $table.relatedMarketContext,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$TradesTableFilterComposer get tradeId {
    final $$TradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableFilterComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$LegsTableFilterComposer get legId {
    final $$LegsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.legId,
      referencedTable: $db.legs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LegsTableFilterComposer(
            $db: $db,
            $table: $db.legs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> eventAttachmentsRefs(
    Expression<bool> Function($$EventAttachmentsTableFilterComposer f) f,
  ) {
    final $$EventAttachmentsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.eventAttachments,
      getReferencedColumn: (t) => t.eventId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventAttachmentsTableFilterComposer(
            $db: $db,
            $table: $db.eventAttachments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EventsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scopeType => $composableBuilder(
    column: $table.scopeType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get eventType => $composableBuilder(
    column: $table.eventType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get eventTime => $composableBuilder(
    column: $table.eventTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get notional => $composableBuilder(
    column: $table.notional,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get riskDelta => $composableBuilder(
    column: $table.riskDelta,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get stopLossBefore => $composableBuilder(
    column: $table.stopLossBefore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get stopLossAfter => $composableBuilder(
    column: $table.stopLossAfter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetBefore => $composableBuilder(
    column: $table.targetBefore,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get targetAfter => $composableBuilder(
    column: $table.targetAfter,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get atr => $composableBuilder(
    column: $table.atr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get pnlRealized => $composableBuilder(
    column: $table.pnlRealized,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get relatedMarketContext => $composableBuilder(
    column: $table.relatedMarketContext,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$TradesTableOrderingComposer get tradeId {
    final $$TradesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableOrderingComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$LegsTableOrderingComposer get legId {
    final $$LegsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.legId,
      referencedTable: $db.legs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LegsTableOrderingComposer(
            $db: $db,
            $table: $db.legs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventsTable> {
  $$EventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get scopeType =>
      $composableBuilder(column: $table.scopeType, builder: (column) => column);

  GeneratedColumn<String> get eventType =>
      $composableBuilder(column: $table.eventType, builder: (column) => column);

  GeneratedColumn<int> get eventTime =>
      $composableBuilder(column: $table.eventTime, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<double> get notional =>
      $composableBuilder(column: $table.notional, builder: (column) => column);

  GeneratedColumn<double> get riskDelta =>
      $composableBuilder(column: $table.riskDelta, builder: (column) => column);

  GeneratedColumn<double> get stopLossBefore => $composableBuilder(
    column: $table.stopLossBefore,
    builder: (column) => column,
  );

  GeneratedColumn<double> get stopLossAfter => $composableBuilder(
    column: $table.stopLossAfter,
    builder: (column) => column,
  );

  GeneratedColumn<double> get targetBefore => $composableBuilder(
    column: $table.targetBefore,
    builder: (column) => column,
  );

  GeneratedColumn<double> get targetAfter => $composableBuilder(
    column: $table.targetAfter,
    builder: (column) => column,
  );

  GeneratedColumn<double> get atr =>
      $composableBuilder(column: $table.atr, builder: (column) => column);

  GeneratedColumn<String> get reason =>
      $composableBuilder(column: $table.reason, builder: (column) => column);

  GeneratedColumn<double> get pnlRealized => $composableBuilder(
    column: $table.pnlRealized,
    builder: (column) => column,
  );

  GeneratedColumn<String> get relatedMarketContext => $composableBuilder(
    column: $table.relatedMarketContext,
    builder: (column) => column,
  );

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<int> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$TradesTableAnnotationComposer get tradeId {
    final $$TradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableAnnotationComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$LegsTableAnnotationComposer get legId {
    final $$LegsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.legId,
      referencedTable: $db.legs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LegsTableAnnotationComposer(
            $db: $db,
            $table: $db.legs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> eventAttachmentsRefs<T extends Object>(
    Expression<T> Function($$EventAttachmentsTableAnnotationComposer a) f,
  ) {
    final $$EventAttachmentsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.eventAttachments,
      getReferencedColumn: (t) => t.eventId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventAttachmentsTableAnnotationComposer(
            $db: $db,
            $table: $db.eventAttachments,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$EventsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EventsTable,
          Event,
          $$EventsTableFilterComposer,
          $$EventsTableOrderingComposer,
          $$EventsTableAnnotationComposer,
          $$EventsTableCreateCompanionBuilder,
          $$EventsTableUpdateCompanionBuilder,
          (Event, $$EventsTableReferences),
          Event,
          PrefetchHooks Function({
            bool tradeId,
            bool legId,
            bool eventAttachmentsRefs,
          })
        > {
  $$EventsTableTableManager(_$AppDatabase db, $EventsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> tradeId = const Value.absent(),
                Value<String> scopeType = const Value.absent(),
                Value<String?> legId = const Value.absent(),
                Value<String> eventType = const Value.absent(),
                Value<int> eventTime = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<String> note = const Value.absent(),
                Value<double?> price = const Value.absent(),
                Value<double?> quantity = const Value.absent(),
                Value<double?> notional = const Value.absent(),
                Value<double?> riskDelta = const Value.absent(),
                Value<double?> stopLossBefore = const Value.absent(),
                Value<double?> stopLossAfter = const Value.absent(),
                Value<double?> targetBefore = const Value.absent(),
                Value<double?> targetAfter = const Value.absent(),
                Value<double?> atr = const Value.absent(),
                Value<String?> reason = const Value.absent(),
                Value<double?> pnlRealized = const Value.absent(),
                Value<String?> relatedMarketContext = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventsCompanion(
                id: id,
                tradeId: tradeId,
                scopeType: scopeType,
                legId: legId,
                eventType: eventType,
                eventTime: eventTime,
                title: title,
                note: note,
                price: price,
                quantity: quantity,
                notional: notional,
                riskDelta: riskDelta,
                stopLossBefore: stopLossBefore,
                stopLossAfter: stopLossAfter,
                targetBefore: targetBefore,
                targetAfter: targetAfter,
                atr: atr,
                reason: reason,
                pnlRealized: pnlRealized,
                relatedMarketContext: relatedMarketContext,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String tradeId,
                required String scopeType,
                Value<String?> legId = const Value.absent(),
                required String eventType,
                required int eventTime,
                Value<String?> title = const Value.absent(),
                required String note,
                Value<double?> price = const Value.absent(),
                Value<double?> quantity = const Value.absent(),
                Value<double?> notional = const Value.absent(),
                Value<double?> riskDelta = const Value.absent(),
                Value<double?> stopLossBefore = const Value.absent(),
                Value<double?> stopLossAfter = const Value.absent(),
                Value<double?> targetBefore = const Value.absent(),
                Value<double?> targetAfter = const Value.absent(),
                Value<double?> atr = const Value.absent(),
                Value<String?> reason = const Value.absent(),
                Value<double?> pnlRealized = const Value.absent(),
                Value<String?> relatedMarketContext = const Value.absent(),
                required int createdAt,
                required int updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => EventsCompanion.insert(
                id: id,
                tradeId: tradeId,
                scopeType: scopeType,
                legId: legId,
                eventType: eventType,
                eventTime: eventTime,
                title: title,
                note: note,
                price: price,
                quantity: quantity,
                notional: notional,
                riskDelta: riskDelta,
                stopLossBefore: stopLossBefore,
                stopLossAfter: stopLossAfter,
                targetBefore: targetBefore,
                targetAfter: targetAfter,
                atr: atr,
                reason: reason,
                pnlRealized: pnlRealized,
                relatedMarketContext: relatedMarketContext,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$EventsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({tradeId = false, legId = false, eventAttachmentsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (eventAttachmentsRefs) db.eventAttachments,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (tradeId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.tradeId,
                                    referencedTable: $$EventsTableReferences
                                        ._tradeIdTable(db),
                                    referencedColumn: $$EventsTableReferences
                                        ._tradeIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }
                        if (legId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.legId,
                                    referencedTable: $$EventsTableReferences
                                        ._legIdTable(db),
                                    referencedColumn: $$EventsTableReferences
                                        ._legIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (eventAttachmentsRefs)
                        await $_getPrefetchedData<
                          Event,
                          $EventsTable,
                          EventAttachment
                        >(
                          currentTable: table,
                          referencedTable: $$EventsTableReferences
                              ._eventAttachmentsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$EventsTableReferences(
                                db,
                                table,
                                p0,
                              ).eventAttachmentsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.eventId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$EventsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EventsTable,
      Event,
      $$EventsTableFilterComposer,
      $$EventsTableOrderingComposer,
      $$EventsTableAnnotationComposer,
      $$EventsTableCreateCompanionBuilder,
      $$EventsTableUpdateCompanionBuilder,
      (Event, $$EventsTableReferences),
      Event,
      PrefetchHooks Function({
        bool tradeId,
        bool legId,
        bool eventAttachmentsRefs,
      })
    >;
typedef $$EventAttachmentsTableCreateCompanionBuilder =
    EventAttachmentsCompanion Function({
      required String id,
      required String eventId,
      required String relativePath,
      required String originalName,
      required String mimeType,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$EventAttachmentsTableUpdateCompanionBuilder =
    EventAttachmentsCompanion Function({
      Value<String> id,
      Value<String> eventId,
      Value<String> relativePath,
      Value<String> originalName,
      Value<String> mimeType,
      Value<int> createdAt,
      Value<int> rowid,
    });

final class $$EventAttachmentsTableReferences
    extends
        BaseReferences<_$AppDatabase, $EventAttachmentsTable, EventAttachment> {
  $$EventAttachmentsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $EventsTable _eventIdTable(_$AppDatabase db) => db.events.createAlias(
    $_aliasNameGenerator(db.eventAttachments.eventId, db.events.id),
  );

  $$EventsTableProcessedTableManager get eventId {
    final $_column = $_itemColumn<String>('event_id')!;

    final manager = $$EventsTableTableManager(
      $_db,
      $_db.events,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_eventIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$EventAttachmentsTableFilterComposer
    extends Composer<_$AppDatabase, $EventAttachmentsTable> {
  $$EventAttachmentsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get relativePath => $composableBuilder(
    column: $table.relativePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalName => $composableBuilder(
    column: $table.originalName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get mimeType => $composableBuilder(
    column: $table.mimeType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$EventsTableFilterComposer get eventId {
    final $$EventsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eventId,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableFilterComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventAttachmentsTableOrderingComposer
    extends Composer<_$AppDatabase, $EventAttachmentsTable> {
  $$EventAttachmentsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get relativePath => $composableBuilder(
    column: $table.relativePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalName => $composableBuilder(
    column: $table.originalName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get mimeType => $composableBuilder(
    column: $table.mimeType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$EventsTableOrderingComposer get eventId {
    final $$EventsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eventId,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableOrderingComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventAttachmentsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EventAttachmentsTable> {
  $$EventAttachmentsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get relativePath => $composableBuilder(
    column: $table.relativePath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get originalName => $composableBuilder(
    column: $table.originalName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get mimeType =>
      $composableBuilder(column: $table.mimeType, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$EventsTableAnnotationComposer get eventId {
    final $$EventsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.eventId,
      referencedTable: $db.events,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$EventsTableAnnotationComposer(
            $db: $db,
            $table: $db.events,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$EventAttachmentsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $EventAttachmentsTable,
          EventAttachment,
          $$EventAttachmentsTableFilterComposer,
          $$EventAttachmentsTableOrderingComposer,
          $$EventAttachmentsTableAnnotationComposer,
          $$EventAttachmentsTableCreateCompanionBuilder,
          $$EventAttachmentsTableUpdateCompanionBuilder,
          (EventAttachment, $$EventAttachmentsTableReferences),
          EventAttachment,
          PrefetchHooks Function({bool eventId})
        > {
  $$EventAttachmentsTableTableManager(
    _$AppDatabase db,
    $EventAttachmentsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EventAttachmentsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EventAttachmentsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EventAttachmentsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> eventId = const Value.absent(),
                Value<String> relativePath = const Value.absent(),
                Value<String> originalName = const Value.absent(),
                Value<String> mimeType = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EventAttachmentsCompanion(
                id: id,
                eventId: eventId,
                relativePath: relativePath,
                originalName: originalName,
                mimeType: mimeType,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String eventId,
                required String relativePath,
                required String originalName,
                required String mimeType,
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => EventAttachmentsCompanion.insert(
                id: id,
                eventId: eventId,
                relativePath: relativePath,
                originalName: originalName,
                mimeType: mimeType,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$EventAttachmentsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({eventId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (eventId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.eventId,
                                referencedTable:
                                    $$EventAttachmentsTableReferences
                                        ._eventIdTable(db),
                                referencedColumn:
                                    $$EventAttachmentsTableReferences
                                        ._eventIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$EventAttachmentsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $EventAttachmentsTable,
      EventAttachment,
      $$EventAttachmentsTableFilterComposer,
      $$EventAttachmentsTableOrderingComposer,
      $$EventAttachmentsTableAnnotationComposer,
      $$EventAttachmentsTableCreateCompanionBuilder,
      $$EventAttachmentsTableUpdateCompanionBuilder,
      (EventAttachment, $$EventAttachmentsTableReferences),
      EventAttachment,
      PrefetchHooks Function({bool eventId})
    >;
typedef $$TagsTableCreateCompanionBuilder =
    TagsCompanion Function({
      required String id,
      required String name,
      required String tagType,
      required int createdAt,
      Value<int> rowid,
    });
typedef $$TagsTableUpdateCompanionBuilder =
    TagsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> tagType,
      Value<int> createdAt,
      Value<int> rowid,
    });

final class $$TagsTableReferences
    extends BaseReferences<_$AppDatabase, $TagsTable, Tag> {
  $$TagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TradeTagRelationsTable, List<TradeTagRelation>>
  _tradeTagRelationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.tradeTagRelations,
        aliasName: $_aliasNameGenerator(db.tags.id, db.tradeTagRelations.tagId),
      );

  $$TradeTagRelationsTableProcessedTableManager get tradeTagRelationsRefs {
    final manager = $$TradeTagRelationsTableTableManager(
      $_db,
      $_db.tradeTagRelations,
    ).filter((f) => f.tagId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _tradeTagRelationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ReviewTagRelationsTable, List<ReviewTagRelation>>
  _reviewTagRelationsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.reviewTagRelations,
        aliasName: $_aliasNameGenerator(
          db.tags.id,
          db.reviewTagRelations.tagId,
        ),
      );

  $$ReviewTagRelationsTableProcessedTableManager get reviewTagRelationsRefs {
    final manager = $$ReviewTagRelationsTableTableManager(
      $_db,
      $_db.reviewTagRelations,
    ).filter((f) => f.tagId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _reviewTagRelationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TagsTableFilterComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagType => $composableBuilder(
    column: $table.tagType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> tradeTagRelationsRefs(
    Expression<bool> Function($$TradeTagRelationsTableFilterComposer f) f,
  ) {
    final $$TradeTagRelationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tradeTagRelations,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradeTagRelationsTableFilterComposer(
            $db: $db,
            $table: $db.tradeTagRelations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> reviewTagRelationsRefs(
    Expression<bool> Function($$ReviewTagRelationsTableFilterComposer f) f,
  ) {
    final $$ReviewTagRelationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.reviewTagRelations,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ReviewTagRelationsTableFilterComposer(
            $db: $db,
            $table: $db.reviewTagRelations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TagsTableOrderingComposer extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagType => $composableBuilder(
    column: $table.tagType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagsTable> {
  $$TagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get tagType =>
      $composableBuilder(column: $table.tagType, builder: (column) => column);

  GeneratedColumn<int> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  Expression<T> tradeTagRelationsRefs<T extends Object>(
    Expression<T> Function($$TradeTagRelationsTableAnnotationComposer a) f,
  ) {
    final $$TradeTagRelationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.tradeTagRelations,
          getReferencedColumn: (t) => t.tagId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$TradeTagRelationsTableAnnotationComposer(
                $db: $db,
                $table: $db.tradeTagRelations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> reviewTagRelationsRefs<T extends Object>(
    Expression<T> Function($$ReviewTagRelationsTableAnnotationComposer a) f,
  ) {
    final $$ReviewTagRelationsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.reviewTagRelations,
          getReferencedColumn: (t) => t.tagId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$ReviewTagRelationsTableAnnotationComposer(
                $db: $db,
                $table: $db.reviewTagRelations,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$TagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagsTable,
          Tag,
          $$TagsTableFilterComposer,
          $$TagsTableOrderingComposer,
          $$TagsTableAnnotationComposer,
          $$TagsTableCreateCompanionBuilder,
          $$TagsTableUpdateCompanionBuilder,
          (Tag, $$TagsTableReferences),
          Tag,
          PrefetchHooks Function({
            bool tradeTagRelationsRefs,
            bool reviewTagRelationsRefs,
          })
        > {
  $$TagsTableTableManager(_$AppDatabase db, $TagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> tagType = const Value.absent(),
                Value<int> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TagsCompanion(
                id: id,
                name: name,
                tagType: tagType,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String tagType,
                required int createdAt,
                Value<int> rowid = const Value.absent(),
              }) => TagsCompanion.insert(
                id: id,
                name: name,
                tagType: tagType,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$TagsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                tradeTagRelationsRefs = false,
                reviewTagRelationsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (tradeTagRelationsRefs) db.tradeTagRelations,
                    if (reviewTagRelationsRefs) db.reviewTagRelations,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (tradeTagRelationsRefs)
                        await $_getPrefetchedData<
                          Tag,
                          $TagsTable,
                          TradeTagRelation
                        >(
                          currentTable: table,
                          referencedTable: $$TagsTableReferences
                              ._tradeTagRelationsRefsTable(db),
                          managerFromTypedResult: (p0) => $$TagsTableReferences(
                            db,
                            table,
                            p0,
                          ).tradeTagRelationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.tagId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (reviewTagRelationsRefs)
                        await $_getPrefetchedData<
                          Tag,
                          $TagsTable,
                          ReviewTagRelation
                        >(
                          currentTable: table,
                          referencedTable: $$TagsTableReferences
                              ._reviewTagRelationsRefsTable(db),
                          managerFromTypedResult: (p0) => $$TagsTableReferences(
                            db,
                            table,
                            p0,
                          ).reviewTagRelationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.tagId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$TagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagsTable,
      Tag,
      $$TagsTableFilterComposer,
      $$TagsTableOrderingComposer,
      $$TagsTableAnnotationComposer,
      $$TagsTableCreateCompanionBuilder,
      $$TagsTableUpdateCompanionBuilder,
      (Tag, $$TagsTableReferences),
      Tag,
      PrefetchHooks Function({
        bool tradeTagRelationsRefs,
        bool reviewTagRelationsRefs,
      })
    >;
typedef $$TradeTagRelationsTableCreateCompanionBuilder =
    TradeTagRelationsCompanion Function({
      required String tradeId,
      required String tagId,
      Value<int> rowid,
    });
typedef $$TradeTagRelationsTableUpdateCompanionBuilder =
    TradeTagRelationsCompanion Function({
      Value<String> tradeId,
      Value<String> tagId,
      Value<int> rowid,
    });

final class $$TradeTagRelationsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $TradeTagRelationsTable,
          TradeTagRelation
        > {
  $$TradeTagRelationsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TradesTable _tradeIdTable(_$AppDatabase db) => db.trades.createAlias(
    $_aliasNameGenerator(db.tradeTagRelations.tradeId, db.trades.id),
  );

  $$TradesTableProcessedTableManager get tradeId {
    final $_column = $_itemColumn<String>('trade_id')!;

    final manager = $$TradesTableTableManager(
      $_db,
      $_db.trades,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tradeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TagsTable _tagIdTable(_$AppDatabase db) => db.tags.createAlias(
    $_aliasNameGenerator(db.tradeTagRelations.tagId, db.tags.id),
  );

  $$TagsTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<String>('tag_id')!;

    final manager = $$TagsTableTableManager(
      $_db,
      $_db.tags,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TradeTagRelationsTableFilterComposer
    extends Composer<_$AppDatabase, $TradeTagRelationsTable> {
  $$TradeTagRelationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TradesTableFilterComposer get tradeId {
    final $$TradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableFilterComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableFilterComposer get tagId {
    final $$TagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableFilterComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TradeTagRelationsTableOrderingComposer
    extends Composer<_$AppDatabase, $TradeTagRelationsTable> {
  $$TradeTagRelationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TradesTableOrderingComposer get tradeId {
    final $$TradesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableOrderingComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableOrderingComposer get tagId {
    final $$TagsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableOrderingComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TradeTagRelationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TradeTagRelationsTable> {
  $$TradeTagRelationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TradesTableAnnotationComposer get tradeId {
    final $$TradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableAnnotationComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableAnnotationComposer get tagId {
    final $$TagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableAnnotationComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TradeTagRelationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TradeTagRelationsTable,
          TradeTagRelation,
          $$TradeTagRelationsTableFilterComposer,
          $$TradeTagRelationsTableOrderingComposer,
          $$TradeTagRelationsTableAnnotationComposer,
          $$TradeTagRelationsTableCreateCompanionBuilder,
          $$TradeTagRelationsTableUpdateCompanionBuilder,
          (TradeTagRelation, $$TradeTagRelationsTableReferences),
          TradeTagRelation,
          PrefetchHooks Function({bool tradeId, bool tagId})
        > {
  $$TradeTagRelationsTableTableManager(
    _$AppDatabase db,
    $TradeTagRelationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TradeTagRelationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TradeTagRelationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TradeTagRelationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> tradeId = const Value.absent(),
                Value<String> tagId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TradeTagRelationsCompanion(
                tradeId: tradeId,
                tagId: tagId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String tradeId,
                required String tagId,
                Value<int> rowid = const Value.absent(),
              }) => TradeTagRelationsCompanion.insert(
                tradeId: tradeId,
                tagId: tagId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TradeTagRelationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({tradeId = false, tagId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (tradeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tradeId,
                                referencedTable:
                                    $$TradeTagRelationsTableReferences
                                        ._tradeIdTable(db),
                                referencedColumn:
                                    $$TradeTagRelationsTableReferences
                                        ._tradeIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (tagId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tagId,
                                referencedTable:
                                    $$TradeTagRelationsTableReferences
                                        ._tagIdTable(db),
                                referencedColumn:
                                    $$TradeTagRelationsTableReferences
                                        ._tagIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TradeTagRelationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TradeTagRelationsTable,
      TradeTagRelation,
      $$TradeTagRelationsTableFilterComposer,
      $$TradeTagRelationsTableOrderingComposer,
      $$TradeTagRelationsTableAnnotationComposer,
      $$TradeTagRelationsTableCreateCompanionBuilder,
      $$TradeTagRelationsTableUpdateCompanionBuilder,
      (TradeTagRelation, $$TradeTagRelationsTableReferences),
      TradeTagRelation,
      PrefetchHooks Function({bool tradeId, bool tagId})
    >;
typedef $$ReviewTagRelationsTableCreateCompanionBuilder =
    ReviewTagRelationsCompanion Function({
      required String tradeId,
      required String tagId,
      Value<int> rowid,
    });
typedef $$ReviewTagRelationsTableUpdateCompanionBuilder =
    ReviewTagRelationsCompanion Function({
      Value<String> tradeId,
      Value<String> tagId,
      Value<int> rowid,
    });

final class $$ReviewTagRelationsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $ReviewTagRelationsTable,
          ReviewTagRelation
        > {
  $$ReviewTagRelationsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $TradesTable _tradeIdTable(_$AppDatabase db) => db.trades.createAlias(
    $_aliasNameGenerator(db.reviewTagRelations.tradeId, db.trades.id),
  );

  $$TradesTableProcessedTableManager get tradeId {
    final $_column = $_itemColumn<String>('trade_id')!;

    final manager = $$TradesTableTableManager(
      $_db,
      $_db.trades,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tradeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $TagsTable _tagIdTable(_$AppDatabase db) => db.tags.createAlias(
    $_aliasNameGenerator(db.reviewTagRelations.tagId, db.tags.id),
  );

  $$TagsTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<String>('tag_id')!;

    final manager = $$TagsTableTableManager(
      $_db,
      $_db.tags,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ReviewTagRelationsTableFilterComposer
    extends Composer<_$AppDatabase, $ReviewTagRelationsTable> {
  $$ReviewTagRelationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TradesTableFilterComposer get tradeId {
    final $$TradesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableFilterComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableFilterComposer get tagId {
    final $$TagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableFilterComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReviewTagRelationsTableOrderingComposer
    extends Composer<_$AppDatabase, $ReviewTagRelationsTable> {
  $$ReviewTagRelationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TradesTableOrderingComposer get tradeId {
    final $$TradesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableOrderingComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableOrderingComposer get tagId {
    final $$TagsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableOrderingComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReviewTagRelationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReviewTagRelationsTable> {
  $$ReviewTagRelationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$TradesTableAnnotationComposer get tradeId {
    final $$TradesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tradeId,
      referencedTable: $db.trades,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TradesTableAnnotationComposer(
            $db: $db,
            $table: $db.trades,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$TagsTableAnnotationComposer get tagId {
    final $$TagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tags,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagsTableAnnotationComposer(
            $db: $db,
            $table: $db.tags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ReviewTagRelationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReviewTagRelationsTable,
          ReviewTagRelation,
          $$ReviewTagRelationsTableFilterComposer,
          $$ReviewTagRelationsTableOrderingComposer,
          $$ReviewTagRelationsTableAnnotationComposer,
          $$ReviewTagRelationsTableCreateCompanionBuilder,
          $$ReviewTagRelationsTableUpdateCompanionBuilder,
          (ReviewTagRelation, $$ReviewTagRelationsTableReferences),
          ReviewTagRelation,
          PrefetchHooks Function({bool tradeId, bool tagId})
        > {
  $$ReviewTagRelationsTableTableManager(
    _$AppDatabase db,
    $ReviewTagRelationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReviewTagRelationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReviewTagRelationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReviewTagRelationsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> tradeId = const Value.absent(),
                Value<String> tagId = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ReviewTagRelationsCompanion(
                tradeId: tradeId,
                tagId: tagId,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String tradeId,
                required String tagId,
                Value<int> rowid = const Value.absent(),
              }) => ReviewTagRelationsCompanion.insert(
                tradeId: tradeId,
                tagId: tagId,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ReviewTagRelationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({tradeId = false, tagId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (tradeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tradeId,
                                referencedTable:
                                    $$ReviewTagRelationsTableReferences
                                        ._tradeIdTable(db),
                                referencedColumn:
                                    $$ReviewTagRelationsTableReferences
                                        ._tradeIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (tagId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.tagId,
                                referencedTable:
                                    $$ReviewTagRelationsTableReferences
                                        ._tagIdTable(db),
                                referencedColumn:
                                    $$ReviewTagRelationsTableReferences
                                        ._tagIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ReviewTagRelationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReviewTagRelationsTable,
      ReviewTagRelation,
      $$ReviewTagRelationsTableFilterComposer,
      $$ReviewTagRelationsTableOrderingComposer,
      $$ReviewTagRelationsTableAnnotationComposer,
      $$ReviewTagRelationsTableCreateCompanionBuilder,
      $$ReviewTagRelationsTableUpdateCompanionBuilder,
      (ReviewTagRelation, $$ReviewTagRelationsTableReferences),
      ReviewTagRelation,
      PrefetchHooks Function({bool tradeId, bool tagId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TradesTableTableManager get trades =>
      $$TradesTableTableManager(_db, _db.trades);
  $$LegsTableTableManager get legs => $$LegsTableTableManager(_db, _db.legs);
  $$EventsTableTableManager get events =>
      $$EventsTableTableManager(_db, _db.events);
  $$EventAttachmentsTableTableManager get eventAttachments =>
      $$EventAttachmentsTableTableManager(_db, _db.eventAttachments);
  $$TagsTableTableManager get tags => $$TagsTableTableManager(_db, _db.tags);
  $$TradeTagRelationsTableTableManager get tradeTagRelations =>
      $$TradeTagRelationsTableTableManager(_db, _db.tradeTagRelations);
  $$ReviewTagRelationsTableTableManager get reviewTagRelations =>
      $$ReviewTagRelationsTableTableManager(_db, _db.reviewTagRelations);
}
