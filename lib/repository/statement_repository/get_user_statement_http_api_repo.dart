import 'dart:convert';

import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/Statement/statement_model.dart';
import 'package:dream_emirates/repository/statement_repository/get_user_statement_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetUserStatementHttpApiRepo extends GetUserStatementRepo {
  final _apiServices = NetworkServicesApi();

  @override
  Future<StatementModel> getUserStatement(String vendorId) async {
    final String endpoint = AppUrl.getUserStatement();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');

    if (myToken == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    try {
      final response = await _apiServices.statementPostApi(
        endpoint,
        vendorId,
        myToken,
      );
      print('Raw API Response: $response');

      // Check if response is a String and decode if necessary
      Map<String, dynamic> jsonResponse;
      if (response is String) {
        // Attempt to decode the string response
        try {
          jsonResponse = jsonDecode(response);
        } catch (e) {
          throw Exception('Failed to decode JSON response: $e');
        }
      } else if (response is Map<String, dynamic>) {
        jsonResponse = response; // Assuming it's already a Map
      } else {
        throw Exception('Unexpected response type: ${response.runtimeType}');
      }

      return StatementModel.fromJson(jsonResponse);
    } catch (e) {
      print('Error fetching statement: $e');
      throw Exception('Failed to fetch statement: $e');
    }
  }
}
