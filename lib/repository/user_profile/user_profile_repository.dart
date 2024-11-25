import 'package:dream_emirates/models/user_profile/user_profile_model.dart';

abstract class UserProfileRepository {
  Future<UserProfileModel> getUserProfile();
}
