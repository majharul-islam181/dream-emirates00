// ignore_for_file: unused_field
import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/pendingTrade/pending_trade_model.dart';
import 'package:dream_emirates/repository/pendingTrade/pending_trade_repository.dart';
import 'package:dream_emirates/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PendingTradeHttpApiRepository extends PendingTradeRepository {
  final _apiServices = NetworkServicesApi();

  @override
  Future<PendingTradeModel> getPendingTrades(
      int page, int pageSize, String vendorId) async {
    final String endpoint = AppUrl.getPendingTrades(1, 20);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');
    if (myToken == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    final response = await _apiServices.getApi(endpoint, vendorId, myToken);

    return PendingTradeModel.fromJson(response);
  }
}
