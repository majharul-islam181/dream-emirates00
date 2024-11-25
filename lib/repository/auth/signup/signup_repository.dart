import 'package:dream_emirates/models/user/user_model.dart';

import '../../../data/network/network_services_api.dart';

abstract class SignupRepository {
  final api = NetworkServicesApi();
  Future<UserModel> signupApi(dynamic data);
}
