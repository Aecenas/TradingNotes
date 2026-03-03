import '../../core/enums.dart';

class Leg {
  const Leg({
    required this.id,
    required this.tradeId,
    required this.symbol,
    required this.direction,
    required this.instrumentType,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
    this.name,
    this.leverage,
    this.account,
    this.currency,
    this.initialPlanEntryPrice,
    this.initialStopLoss,
    this.initialRiskBudget,
    this.initialAtr,
    this.note,
  });

  final String id;
  final String tradeId;
  final String symbol;
  final String? name;
  final Direction direction;
  final InstrumentType instrumentType;
  final double? leverage;
  final String? account;
  final String? currency;
  final double? initialPlanEntryPrice;
  final double? initialStopLoss;
  final double? initialRiskBudget;
  final double? initialAtr;
  final String? note;
  final int sortOrder;
  final DateTime createdAt;
  final DateTime updatedAt;

  Leg copyWith({
    String? id,
    String? tradeId,
    String? symbol,
    String? name,
    Direction? direction,
    InstrumentType? instrumentType,
    double? leverage,
    String? account,
    String? currency,
    double? initialPlanEntryPrice,
    double? initialStopLoss,
    double? initialRiskBudget,
    double? initialAtr,
    String? note,
    int? sortOrder,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Leg(
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
    );
  }
}
