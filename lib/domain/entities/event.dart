import '../../core/enums.dart';

class EventAttachment {
  const EventAttachment({
    required this.id,
    required this.eventId,
    required this.relativePath,
    required this.originalName,
    required this.mimeType,
    required this.createdAt,
  });

  final String id;
  final String eventId;
  final String relativePath;
  final String originalName;
  final String mimeType;
  final DateTime createdAt;
}

class Event {
  const Event({
    required this.id,
    required this.tradeId,
    required this.scopeType,
    required this.eventType,
    required this.eventTime,
    required this.note,
    required this.attachments,
    required this.createdAt,
    required this.updatedAt,
    this.legId,
    this.title,
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
  });

  final String id;
  final String tradeId;
  final ScopeType scopeType;
  final String? legId;
  final EventType eventType;
  final DateTime eventTime;
  final String? title;
  final String note;
  final List<EventAttachment> attachments;
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
  final DateTime createdAt;
  final DateTime updatedAt;

  Event copyWith({
    String? id,
    String? tradeId,
    ScopeType? scopeType,
    String? legId,
    EventType? eventType,
    DateTime? eventTime,
    String? title,
    String? note,
    List<EventAttachment>? attachments,
    double? price,
    double? quantity,
    double? notional,
    double? riskDelta,
    double? stopLossBefore,
    double? stopLossAfter,
    double? targetBefore,
    double? targetAfter,
    double? atr,
    String? reason,
    double? pnlRealized,
    String? relatedMarketContext,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Event(
      id: id ?? this.id,
      tradeId: tradeId ?? this.tradeId,
      scopeType: scopeType ?? this.scopeType,
      legId: legId ?? this.legId,
      eventType: eventType ?? this.eventType,
      eventTime: eventTime ?? this.eventTime,
      title: title ?? this.title,
      note: note ?? this.note,
      attachments: attachments ?? this.attachments,
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
    );
  }
}
