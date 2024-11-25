import 'package:dream_emirates/models/pendingTrade/pending_trade_model.dart';

abstract class PendingTradeRepository {
  Future<PendingTradeModel> getPendingTrades(
      int page, int pageSize, String vendorId);
}
