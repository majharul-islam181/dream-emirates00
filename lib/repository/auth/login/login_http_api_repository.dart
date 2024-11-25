import 'package:dream_emirates/models/user/user_model.dart';
import 'package:dream_emirates/repository/auth/login/login_repository.dart';
import '../../../config/app_url.dart';
import '../../../data/network/network_services_api.dart';

class LoginHttpApiRepository implements LoginRepository {
  @override
  final api = NetworkServicesApi();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    final response = await api.postApi(AppUrl.loginApi, data);
    if (response == null) {
      throw Exception('Failed to get a valid response from API.');
    }
    return UserModel.fromJson(response);
  }
}
