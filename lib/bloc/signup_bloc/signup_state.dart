// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signup_bloc.dart';

class SignupState extends Equatable {
  final String fullname;
  final String email;
  final String phoneNumber;
  final String dateOfBirth;
  final String confrimPassword;
  final String password;
  final PostApiStatus postApiStatus;
  final String message;

  const SignupState({
    this.fullname = '',
    this.email = '',
    this.phoneNumber = '',
    this.dateOfBirth = '',
    this.password = '',
    this.confrimPassword = '',
    this.message = '',
    this.postApiStatus = PostApiStatus.initial,
  });

  SignupState copyWith({
    String? fullname,
    String? email,
    String? phoneNumber,
    String? dateOfBirth,
    String? confrimPassword,
    String? password,
    String? message,
    PostApiStatus? postApiStatus,
  }) {
    return SignupState(
      fullname: fullname ?? this.fullname,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      confrimPassword: confrimPassword ?? this.confrimPassword,
      password: password ?? this.password,
      message: message ?? this.message,
      postApiStatus: postApiStatus ?? this.postApiStatus,
    );
  }

  @override
  List<Object?> get props => [
        fullname,
        email,
        phoneNumber,
        dateOfBirth,
        confrimPassword,
        password,
        postApiStatus
      ];
}
