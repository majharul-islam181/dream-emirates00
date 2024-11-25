part of 'signup_bloc.dart';

abstract class SignupEvent extends Equatable {
  const SignupEvent();
  @override
  List<Object?> get props => [];
}

class FullNameChangedEvent extends SignupEvent {
  const FullNameChangedEvent({required this.fullName});
  final String fullName;

  @override
  List<Object> get props => [fullName];
}

class EmailChangedEvent extends SignupEvent {
  const EmailChangedEvent({required this.email});
  final String email;

  @override
  List<Object> get props => [email];
}

class PhoneNumberChangedEvent extends SignupEvent {
  const PhoneNumberChangedEvent({required this.phoneNumber});
  final String phoneNumber;

  @override
  List<Object> get props => [phoneNumber];
}

class DateOfBirthChangedEvent extends SignupEvent {
  const DateOfBirthChangedEvent({required this.dateOfBirth});
  final String dateOfBirth;

  @override
  List<Object> get props => [dateOfBirth];
}

class ConfrimChangedEvent extends SignupEvent {
  const ConfrimChangedEvent({required this.confrimPassword});
  final String confrimPassword;

  @override
  List<Object> get props => [confrimPassword];
}

class PasswordChangedEvent extends SignupEvent {
  const PasswordChangedEvent({required this.password});
  final String password;

  @override
  List<Object> get props => [password];
}

class SignUpButtonEvent extends SignupEvent {}
