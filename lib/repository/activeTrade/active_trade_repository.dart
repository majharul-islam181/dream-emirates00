import 'package:dream_emirates/models/activeTrade/active_trade_model.dart';

abstract class ActiveTradeRepository {
  Future<ActiveTradeModel> getActiveTrades(
      int page, int pageSize, String accountId);
}
