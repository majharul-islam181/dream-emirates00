// ignore_for_file: override_on_non_overriding_member

part of 'user_profile_bloc.dart';

abstract class UserProfileEvent {
  const UserProfileEvent();
  @override
  List<Object> get props => [];
}

class FetchUserProfileEvent extends UserProfileEvent {
  FetchUserProfileEvent();

  @override
  List<Object> get props => [];
}
