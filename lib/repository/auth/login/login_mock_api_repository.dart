import 'package:dream_emirates/models/user/user_model.dart';
import 'package:dream_emirates/repository/auth/login/login_repository.dart';
import '../../../data/network/network_services_api.dart';

class LoginMockApiRepository implements LoginRepository {
  @override
  final api = NetworkServicesApi();
  @override
  Future<UserModel> loginApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 2));
    final response = {'token': 'slkslkdfasdf'};

    return UserModel.fromJson(response);
  }
}
