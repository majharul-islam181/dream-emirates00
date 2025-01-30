// ignore_for_file: unused_field, unused_import

import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/activeTrade/active_trade_model.dart';
import 'package:dream_emirates/repository/activeTrade/active_trade_repository.dart';
import 'package:dream_emirates/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ActiveTradeHttpApiRepository extends ActiveTradeRepository {
  final _apiServices = NetworkServicesApi();

  @override
  Future<ActiveTradeModel> getActiveTrades(
      int page, int pageSize, String accountId) async {
    final String endpoint = AppUrl.getActiveTrades(1, 20);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');
    if (myToken == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    final response = await _apiServices.getApi(endpoint, accountId, myToken);

    return ActiveTradeModel.fromJson(response);
  }
}
