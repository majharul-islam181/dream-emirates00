import 'dart:math';

import 'package:dream_emirates/repository/auth/signup/signup_repository.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupRepository signupRepository;
  SignupBloc({required this.signupRepository}) : super(const SignupState()) {
    on<FullNameChangedEvent>(_onFullNameChanged);
    on<EmailChangedEvent>(_onEmailChanged);
    on<PhoneNumberChangedEvent>(_onPhoneNumberChanged);
    on<DateOfBirthChangedEvent>(_onDateOfBirthChanged);

    on<PasswordChangedEvent>(_onPasswordChanged);
    on<ConfrimChangedEvent>(_onConfrimPasswordChanged);

    on<SignUpButtonEvent>(_onsignupChanged);
  }

  void _onFullNameChanged(
      FullNameChangedEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(fullname: event.fullName));
  }

  void _onEmailChanged(EmailChangedEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPhoneNumberChanged(
      PhoneNumberChangedEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  void _onDateOfBirthChanged(
      DateOfBirthChangedEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(dateOfBirth: event.dateOfBirth));
    print("New dateOfBirth in state: ${state.dateOfBirth}");
  }

  void _onPasswordChanged(
      PasswordChangedEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onConfrimPasswordChanged(
      ConfrimChangedEvent event, Emitter<SignupState> emit) {
    emit(state.copyWith(confrimPassword: event.confrimPassword));
  }

  Future<void> _onsignupChanged(
      SignUpButtonEvent event, Emitter<SignupState> emit) async {
    String generateRandomDocId(int length) {
      const characters =
          'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
      final random = Random();
      return String.fromCharCodes(
        Iterable.generate(
          length,
          (_) => characters.codeUnitAt(random.nextInt(characters.length)),
        ),
      );
    }

    // Generate a random docId
    String randomDocId = generateRandomDocId(8); // 8-character long docId
    Map data = {
      "name": state.fullname,
      "email": state.email,
      "dob": state.dateOfBirth,
      "password": state.confrimPassword,
      "phone_number": state.phoneNumber,
      "type": "nid",
      "docId": randomDocId
    };

    emit(state.copyWith(postApiStatus: PostApiStatus.loading));

    await signupRepository.signupApi(data).then((value) async {
      if (value.status == false) {
        emit(state.copyWith(
            message: value.status.toString(),
            postApiStatus: PostApiStatus.error));
      } else {
        emit(state.copyWith(
            message: value.message, postApiStatus: PostApiStatus.success));
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print('Error in singup: $error');
        //  print('Stack trace: $stackTrace');
      }
      emit(state.copyWith(
          message: error.toString(), postApiStatus: PostApiStatus.error));
    });
  }
}
