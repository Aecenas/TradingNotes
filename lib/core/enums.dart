enum TradeStatus { draft, active, closed, archived }

enum ScopeType { trade, leg }

enum Direction { long, short }

enum MarketType { crypto, us, hk, futures, fx, options, other }

enum StrategyType {
  trendFollowing,
  breakout,
  leftSideTrial,
  meanReversion,
  eventDriven,
  pairRelativeValue,
  arbitrage,
  other,
}

enum StructureType {
  singleDirectional,
  multiDirectional,
  pairRelativeValue,
  optionStrategy,
  arbitrageHedge,
  other,
}

enum InstrumentType { spot, perp, futures, stock, etf, option, other }

enum EventType {
  marketEvent,
  thesisUpdate,
  planUpdate,
  open,
  add,
  reduce,
  close,
  moveStop,
  moveTarget,
  hedge,
  roll,
  generalNote,
}

enum PlanFollowed { yes, partial, no }

enum TagType { trade, review }

extension EnumStorage on Enum {
  String get dbValue => name;
}

T parseEnum<T extends Enum>(Iterable<T> values, String value, T fallback) {
  for (final item in values) {
    if (item.name == value) {
      return item;
    }
  }
  return fallback;
}

extension TradeStatusX on TradeStatus {
  String get label {
    switch (this) {
      case TradeStatus.draft:
        return '草稿';
      case TradeStatus.active:
        return '进行中';
      case TradeStatus.closed:
        return '已结束';
      case TradeStatus.archived:
        return '已归档';
    }
  }
}

extension ScopeTypeX on ScopeType {
  String get label {
    switch (this) {
      case ScopeType.trade:
        return 'Trade 级';
      case ScopeType.leg:
        return 'Leg 级';
    }
  }
}

extension DirectionX on Direction {
  String get label {
    switch (this) {
      case Direction.long:
        return 'Long';
      case Direction.short:
        return 'Short';
    }
  }
}

extension MarketTypeX on MarketType {
  String get label {
    switch (this) {
      case MarketType.crypto:
        return 'Crypto';
      case MarketType.us:
        return 'US';
      case MarketType.hk:
        return 'HK';
      case MarketType.futures:
        return 'Futures';
      case MarketType.fx:
        return 'FX';
      case MarketType.options:
        return 'Options';
      case MarketType.other:
        return 'Other';
    }
  }
}

extension StrategyTypeX on StrategyType {
  String get label {
    switch (this) {
      case StrategyType.trendFollowing:
        return '趋势跟随';
      case StrategyType.breakout:
        return '突破';
      case StrategyType.leftSideTrial:
        return '左侧试错';
      case StrategyType.meanReversion:
        return '均值回归';
      case StrategyType.eventDriven:
        return '事件驱动';
      case StrategyType.pairRelativeValue:
        return '配对/相对价值';
      case StrategyType.arbitrage:
        return '套利';
      case StrategyType.other:
        return '其他';
    }
  }
}

extension StructureTypeX on StructureType {
  String get label {
    switch (this) {
      case StructureType.singleDirectional:
        return '单腿方向性';
      case StructureType.multiDirectional:
        return '多腿方向性';
      case StructureType.pairRelativeValue:
        return '配对/相对价值';
      case StructureType.optionStrategy:
        return '期权策略';
      case StructureType.arbitrageHedge:
        return '套利/对冲';
      case StructureType.other:
        return '其他';
    }
  }
}

extension InstrumentTypeX on InstrumentType {
  String get label {
    switch (this) {
      case InstrumentType.spot:
        return 'Spot';
      case InstrumentType.perp:
        return 'Perp';
      case InstrumentType.futures:
        return 'Futures';
      case InstrumentType.stock:
        return 'Stock';
      case InstrumentType.etf:
        return 'ETF';
      case InstrumentType.option:
        return 'Option';
      case InstrumentType.other:
        return 'Other';
    }
  }
}

extension EventTypeX on EventType {
  String get label {
    switch (this) {
      case EventType.marketEvent:
        return 'MARKET_EVENT';
      case EventType.thesisUpdate:
        return 'THESIS_UPDATE';
      case EventType.planUpdate:
        return 'PLAN_UPDATE';
      case EventType.open:
        return 'OPEN';
      case EventType.add:
        return 'ADD';
      case EventType.reduce:
        return 'REDUCE';
      case EventType.close:
        return 'CLOSE';
      case EventType.moveStop:
        return 'MOVE_STOP';
      case EventType.moveTarget:
        return 'MOVE_TARGET';
      case EventType.hedge:
        return 'HEDGE';
      case EventType.roll:
        return 'ROLL';
      case EventType.generalNote:
        return 'GENERAL_NOTE';
    }
  }

  bool get isTradeLevelOnly {
    switch (this) {
      case EventType.marketEvent:
      case EventType.thesisUpdate:
      case EventType.planUpdate:
        return true;
      default:
        return false;
    }
  }

  bool get isLegLevelPreferred {
    switch (this) {
      case EventType.open:
      case EventType.add:
      case EventType.reduce:
      case EventType.close:
      case EventType.moveStop:
      case EventType.moveTarget:
      case EventType.hedge:
      case EventType.roll:
        return true;
      default:
        return false;
    }
  }
}

extension PlanFollowedX on PlanFollowed {
  String get label {
    switch (this) {
      case PlanFollowed.yes:
        return 'Yes';
      case PlanFollowed.partial:
        return 'Partial';
      case PlanFollowed.no:
        return 'No';
    }
  }
}

extension TagTypeX on TagType {
  String get label {
    switch (this) {
      case TagType.trade:
        return '交易标签';
      case TagType.review:
        return '复盘标签';
    }
  }
}
