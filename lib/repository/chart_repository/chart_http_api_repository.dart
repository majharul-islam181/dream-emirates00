import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/chartModel/chart_model.dart';
import 'package:dream_emirates/repository/chart_repository/chart_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChartHttpApiRepository extends ChartRepository {
  final _apiServices = NetworkServicesApi();

  @override
  Future<List<ChartDataModel>> getChartData(String accountId) async {
    final String endpoint = AppUrl.getChartDataEndpoint(
        accountId); // Add an endpoint method for chart data in AppUrl
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');
    if (myToken == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    final response = await _apiServices.getApi(endpoint, accountId, myToken);

    // Map the API response to a list of ChartDataModel
    return (response as List)
        .map((data) => ChartDataModel.fromJson(data))
        .toList();
  }
}
