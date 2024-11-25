part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final PostApiStatus postApiStatus;
  final String message;
  final bool rememberMe;

  const LoginState(
      {this.email = '',
      this.password = '',
      this.postApiStatus = PostApiStatus.initial,
      this.rememberMe = false,
      this.message = ''});

  LoginState copyWith({
    String? email,
    String? password,
    PostApiStatus? postApiStatus,
    String? message,
    bool? rememberMe,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      postApiStatus: postApiStatus ?? this.postApiStatus,
      message: message ?? this.message,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }

  @override
  List<Object?> get props => [email, password, postApiStatus, message];
}
