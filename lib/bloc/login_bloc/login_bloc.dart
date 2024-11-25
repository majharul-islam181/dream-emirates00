import 'package:bloc/bloc.dart';
import 'package:dream_emirates/repository/auth/login/login_repository.dart';
import 'package:dream_emirates/services/session_manager/session_controller.dart';
import 'package:dream_emirates/utils/enums.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;
  LoginBloc({required this.loginRepository}) : super(const LoginState()) {
    on<EmailChangedEvent>(_onEmailChanged);
    on<PasswordChangedEvent>(_onPasswordChanged);
    on<LoginButtonEvent>(_onloginButton);
  }

  void _onEmailChanged(EmailChangedEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(
      PasswordChangedEvent event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onloginButton(
      LoginButtonEvent event, Emitter<LoginState> emit) async {
    Map data = {
      "phone_number": state.email,
      "password": state.password,
    };

    emit(state.copyWith(postApiStatus: PostApiStatus.loading));

    await loginRepository.loginApi(data).then((value) async {
      if (value.status == false) {
        emit(state.copyWith(
            message: value.status.toString(),
            postApiStatus: PostApiStatus.error));
      } else {
        // Decode the token to get the user ID
        Map<String, dynamic> decodedToken = JwtDecoder.decode(value.data.token);
        final String name =
            decodedToken['name'] ?? 'Unknown'; // Handle missing key

        // Save the user ID to SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('name', name);
        await prefs.setString('token', value.data.token);

        if (kDebugMode) {
          print('name from login_bloc: ::::::$name');
          print('Token from login_bloc: ::::::${value.data.token}');
        }
        await SessionController().saveUserInPreference(value.data);
        await SessionController().getUserFromPreference();

        emit(state.copyWith(
            message: value.message, postApiStatus: PostApiStatus.success));
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print('Error in login_bloc: $error');
        //  print('Stack trace: $stackTrace');
      }
      emit(state.copyWith(
          message: error.toString(), postApiStatus: PostApiStatus.error));
    });
  }
}
