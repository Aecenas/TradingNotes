import '../../core/result.dart';
import '../repositories/trade_repository.dart';

class ArchiveTrade {
  const ArchiveTrade(this._tradeRepository);

  final TradeRepository _tradeRepository;

  Future<Result<void>> call(String tradeId, bool archived) {
    return _tradeRepository.setArchived(tradeId, archived);
  }
}
