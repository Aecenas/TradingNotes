import '../../core/enums.dart';

class Trade {
  const Trade({
    required this.id,
    required this.title,
    required this.market,
    required this.strategyType,
    required this.structureType,
    required this.entryReason,
    required this.tags,
    required this.status,
    required this.startTime,
    required this.reviewErrorTags,
    required this.createdAt,
    required this.updatedAt,
    this.thesis,
    this.expectation,
    this.invalidationCondition,
    this.endTime,
    this.summaryPnl,
    this.reviewText,
    this.reviewScoreExecution,
    this.reviewScoreResult,
    this.reviewPlanFollowed,
  });

  final String id;
  final String title;
  final MarketType market;
  final StrategyType strategyType;
  final StructureType structureType;
  final String? thesis;
  final String entryReason;
  final String? expectation;
  final String? invalidationCondition;
  final List<String> tags;
  final TradeStatus status;
  final DateTime startTime;
  final DateTime? endTime;
  final double? summaryPnl;
  final String? reviewText;
  final int? reviewScoreExecution;
  final int? reviewScoreResult;
  final PlanFollowed? reviewPlanFollowed;
  final List<String> reviewErrorTags;
  final DateTime createdAt;
  final DateTime updatedAt;

  Trade copyWith({
    String? id,
    String? title,
    MarketType? market,
    StrategyType? strategyType,
    StructureType? structureType,
    String? thesis,
    String? entryReason,
    String? expectation,
    String? invalidationCondition,
    List<String>? tags,
    TradeStatus? status,
    DateTime? startTime,
    DateTime? endTime,
    double? summaryPnl,
    String? reviewText,
    int? reviewScoreExecution,
    int? reviewScoreResult,
    PlanFollowed? reviewPlanFollowed,
    List<String>? reviewErrorTags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Trade(
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
      tags: tags ?? this.tags,
      status: status ?? this.status,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      summaryPnl: summaryPnl ?? this.summaryPnl,
      reviewText: reviewText ?? this.reviewText,
      reviewScoreExecution: reviewScoreExecution ?? this.reviewScoreExecution,
      reviewScoreResult: reviewScoreResult ?? this.reviewScoreResult,
      reviewPlanFollowed: reviewPlanFollowed ?? this.reviewPlanFollowed,
      reviewErrorTags: reviewErrorTags ?? this.reviewErrorTags,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class CloseTradeInput {
  const CloseTradeInput({
    required this.endTime,
    required this.reviewErrorTags,
    this.finalExitReason,
    this.summaryPnl,
    this.reviewPlanFollowed,
    this.reviewScoreExecution,
    this.reviewScoreResult,
    this.reviewText,
  });

  final DateTime endTime;
  final String? finalExitReason;
  final double? summaryPnl;
  final PlanFollowed? reviewPlanFollowed;
  final int? reviewScoreExecution;
  final int? reviewScoreResult;
  final String? reviewText;
  final List<String> reviewErrorTags;
}

class TradeQuery {
  const TradeQuery({
    this.keyword,
    this.market,
    this.status,
    this.strategyType,
    this.tag,
    this.startFrom,
    this.startTo,
    this.includeArchived = true,
  });

  final String? keyword;
  final MarketType? market;
  final TradeStatus? status;
  final StrategyType? strategyType;
  final String? tag;
  final DateTime? startFrom;
  final DateTime? startTo;
  final bool includeArchived;
}
