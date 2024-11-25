import 'package:dream_emirates/models/completeTrade/complete_trade_model.dart';

abstract class CompleteTradeRepository {
  Future<CompleteTradeModel> getCompleteTrades(
      int page, int pageSize, String vendorId);
}
