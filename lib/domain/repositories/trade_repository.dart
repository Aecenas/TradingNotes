import '../../core/result.dart';
import '../entities/trade.dart';

abstract class TradeRepository {
  Future<Result<List<Trade>>> getTrades(TradeQuery query);

  Future<Result<Trade>> getTradeById(String tradeId);

  Future<Result<void>> upsertTrade(Trade trade);

  Future<Result<void>> closeTrade(String tradeId, CloseTradeInput input);

  Future<Result<void>> setArchived(String tradeId, bool archived);
}
