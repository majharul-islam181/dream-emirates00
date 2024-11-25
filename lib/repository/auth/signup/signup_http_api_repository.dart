import 'package:dream_emirates/models/user/user_model.dart';
import 'package:dream_emirates/repository/auth/signup/signup_repository.dart';
import '../../../config/app_url.dart';
import '../../../data/network/network_services_api.dart';

class SignupHttpApiRepository implements SignupRepository {
  @override
  final api = NetworkServicesApi();
  @override
  Future<UserModel> signupApi(dynamic data) async {
    final response = await api.postApi(AppUrl.signupApi, data);
    if (response == null) {
      throw Exception('Failed to get a valid response from API.');
    }
    return UserModel.fromJson(response);
  }
}
