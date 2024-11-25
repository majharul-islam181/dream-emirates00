import 'package:dream_emirates/models/getUserBalance/get_user_balance_model.dart';

abstract class GetUserBalanceRepo {
  Future<GetUserBalanceModel> getUserBalance(String vendorId);
}
