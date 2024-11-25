import 'package:dream_emirates/data/response/api_response.dart';
import 'package:dream_emirates/models/user_profile/user_profile_model.dart';
import 'package:dream_emirates/repository/user_profile/user_profile_repository.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
part 'user_profile_state.dart';
part 'user_profile_event.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  UserProfileRepository userProfileRepository;
  UserProfileBloc({required this.userProfileRepository})
      : super(UserProfileState(getUserProfileData: ApiResponse.loading())) {
    on<FetchUserProfileEvent>(_fetchUserProfileEvent);
  }

  Future<void> _fetchUserProfileEvent(
      FetchUserProfileEvent event, Emitter<UserProfileState> emit) async {
    emit(state.copyWith(getUserProfileData: ApiResponse.loading()));

    try {
      final userProfileData = await userProfileRepository.getUserProfile();

      // final userName = userProfileData.data?.user?.name ?? '';
      // final userImage = userProfileData.data?.user?.profileImage?.path ?? '';

      // // Cache the name and image locally
      // await _cacheUserData(userName, userImage);

      emit(state.copyWith(
          getUserProfileData: ApiResponse.completed(userProfileData)));
    } catch (e) {
      emit(state.copyWith(getUserProfileData: ApiResponse.error(e.toString())));
    }
  }

  // Future<void> _cacheUserData(String name, String imageUrl) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('cachedUserName', name);
  //   await prefs.setString('cachedUserImage', imageUrl);
  // }
}
