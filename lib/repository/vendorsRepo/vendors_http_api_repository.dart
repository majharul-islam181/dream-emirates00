// ignore_for_file: unused_field

import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/vendors/vendors_model.dart';
import 'package:dream_emirates/repository/vendorsRepo/vendors_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VendorsHttpApiRepository extends VendorsRepository {
  final _apiServices = NetworkServicesApi();

  @override
  Future<VendorsModel> getVendorsAccount() async {
    final String endpoint = '${AppUrl.getVendorsAccount()}?chatapp=string';

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? myToken = prefs.getString('token');
    if (myToken == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    // Fetch the response from the API
    final response = await _apiServices.getApi(endpoint, '', myToken);

    // Log the response to inspect the data
    if (kDebugMode) {
      print('API Response: $response');
    }

    // Parse the response into the VendorsModel
    return VendorsModel.fromJson(response);
  }
}
