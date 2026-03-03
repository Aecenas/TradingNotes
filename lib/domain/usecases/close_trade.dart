import '../../core/result.dart';
import '../entities/trade.dart';
import '../repositories/trade_repository.dart';

class CloseTrade {
  const CloseTrade(this._tradeRepository);

  final TradeRepository _tradeRepository;

  Future<Result<void>> call(String tradeId, CloseTradeInput input) {
    return _tradeRepository.closeTrade(tradeId, input);
  }
}
