part of 'user_profile_bloc.dart';

class UserProfileState extends Equatable {
  final PostApiStatus postApiStatus;
  final String message;
  final ApiResponse<UserProfileModel> getUserProfileData;

  const UserProfileState(
      {required this.getUserProfileData,
      this.postApiStatus = PostApiStatus.initial,
      this.message = ''});

  UserProfileState copyWith({
    ApiResponse<UserProfileModel>? getUserProfileData,
    PostApiStatus? postApiStatus,
    String? message,
  }) {
    return UserProfileState(
      getUserProfileData: getUserProfileData ?? this.getUserProfileData,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [
        getUserProfileData,
        postApiStatus,
        message,
      ];
}
