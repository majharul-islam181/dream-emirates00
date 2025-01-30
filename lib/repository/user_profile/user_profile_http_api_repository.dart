import 'package:dream_emirates/config/app_url.dart';
import 'package:dream_emirates/data/network/network_services_api.dart';
import 'package:dream_emirates/models/user_profile/user_profile_model.dart';
import 'package:dream_emirates/repository/user_profile/user_profile_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfileHttpApiRepository extends UserProfileRepository {
  final _apiServices = NetworkServicesApi();

  @override
  Future<UserProfileModel> getUserProfile() async {
    final String endpoint = AppUrl.getUserProfile();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    if (token == null) {
      throw Exception('No token found. User might not be logged in.');
    }

    final response = await _apiServices.getApi(endpoint, '', token);

    // Check if response is a Map before parsing
    if (response is Map<String, dynamic>) {
      return UserProfileModel.fromJson(response);
    } else {
      throw Exception('Expected response to be a Map');
    }
  }
}
