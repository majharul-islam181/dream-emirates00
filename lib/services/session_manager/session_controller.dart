// import 'dart:convert';

// import 'package:flutter/material.dart';
// import '../../models/user/user_model.dart';
// // import '../../views/views.dart';
// import '../storage/local_storage.dart';

// class SessionController {
//   static final SessionController _session = SessionController._internal();
//   final LocalStorage localStorage = LocalStorage();
//   UserModel user = UserModel();
//   bool? isLogin;

//   SessionController._internal() {
//     isLogin = false;
//   }

//   factory SessionController() {
//     return _session;
//   }

//   Future<void> saveUserInPreference(dynamic user) async {
//     localStorage.setValue('token', jsonEncode(user));
//     // Storing value to check login
//     localStorage.setValue('isLogin', 'true');
//   }

//   Future<void> getUserFromPreference() async {
//     try {
//       var userData = await localStorage.readValue('token');
//       var isLogin = await localStorage.readValue('isLogin');

//       if (userData.isNotEmpty) {
//         SessionController().user = UserModel.fromJson(jsonDecode(userData));
//         print('i m isnotEmpyt in seeson controller');
//       }
//       SessionController().isLogin = isLogin == 'true' ? true : false;
//     } catch (e) {
//       debugPrint(e.toString());
//     }
//   }
// }

import 'dart:convert';

import 'package:dream_emirates/models/user/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../storage/local_storage.dart';

class SessionController {
  static final SessionController _session = SessionController._internal();
  final LocalStorage localStorage = LocalStorage();
  UserModel user = UserModel(data: UserData(user: User()));
  bool isLogin = false;

  SessionController._internal();

  factory SessionController() {
    return _session;
  }

  // Future<void> saveUserInPreference(UserData user) async {
  //   await localStorage.setValue('token', jsonEncode(user.token));
  //   // Storing value to check login
  //   if (kDebugMode) {
  //     print('token form save userInPreferencrt: ${user.token}');
  //   }
  //   await localStorage.setValue('isLogin', 'true');
  //   _session.isLogin = true;
  // }

  Future<void> saveUserInPreference(UserData user) async {
    try {
      await localStorage.setValue('token', jsonEncode(user.token));
      await localStorage.setValue('isLogin', 'true');
      _session.isLogin = true;

      if (kDebugMode) {
        print('User token saved: ${user.token}');
        print('isLogin saved as: true');
      }
    } catch (e) {
      debugPrint('Error saving preferences: $e');
    }
  }

  Future<void> getUserFromPreference() async {
    try {
      var userData = await localStorage
          .readValue('token'); // This might be just a token string
      var isLoginData = await localStorage.readValue('isLogin');

      if (kDebugMode) {
        print('User data from local storage: $userData');
        print('isLoggedin data from local storage: $isLoginData');
      }

      // Check if userData is not just a string (i.e., token) but a JSON string with UserModel data
      if (userData != null && userData.isNotEmpty) {
        // Try to decode as JSON
        final jsonData = jsonDecode(userData);

        // Ensure jsonData is a map before attempting to parse it
        if (jsonData is Map<String, dynamic>) {
          _session.user = UserModel.fromJson(jsonData);
        } else {
          debugPrint('Unexpected data format for userData: $jsonData');
        }
      }

      _session.isLogin = isLoginData == 'true';

      if (kDebugMode) {
        print('isLoggedin after setting from preference: ${_session.isLogin}');
      }
    } catch (e) {
      debugPrint('Error reading preferences: $e');
    }
  }

  // Future<void> getUserFromPreference() async {
  //   try {
  //     var userData = await localStorage.readValue('token');
  //     var isLoginData = await localStorage.readValue('isLogin');

  //     if (kDebugMode) {
  //       print('User data from local storage: $userData');
  //       print('isLoggedin data from local storage: $isLoginData');
  //     }

  //     if (userData != null && userData.isNotEmpty) {
  //       _session.user = UserModel.fromJson(jsonDecode(userData));
  //     }

  //     _session.isLogin = isLoginData == 'true';

  //     if (kDebugMode) {
  //       print('isLoggedin after setting from preference: ${_session.isLogin}');
  //     }
  //   } catch (e) {
  //     debugPrint('Error reading preferences: $e');
  //   }
  // }
}
