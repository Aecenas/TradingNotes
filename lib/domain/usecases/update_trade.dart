import '../../core/result.dart';
import '../entities/trade.dart';
import '../repositories/trade_repository.dart';

class UpdateTrade {
  const UpdateTrade(this._tradeRepository);

  final TradeRepository _tradeRepository;

  Future<Result<void>> call(Trade trade) => _tradeRepository.upsertTrade(trade);
}
