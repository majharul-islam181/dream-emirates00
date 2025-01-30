// ignore_for_file: unused_import

import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/getUserBalance/get_user_balance_model.dart';
import 'package:dream_emirates/repository/getUserbalance/get_user_balance_repo.dart';
import 'package:dream_emirates/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetUserBalanceHttpApiRepo extends GetUserBalanceRepo {
  final _apiServices = NetworkServicesApi();

  @override
  Future<GetUserBalanceModel> getUserBalance(String vendorId) async {
    final String endpoint = AppUrl.getUserBalance();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');
    if (myToken == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    final response = await _apiServices.getApi(endpoint, vendorId, myToken);

    return GetUserBalanceModel.fromJson(response);
  }
}
