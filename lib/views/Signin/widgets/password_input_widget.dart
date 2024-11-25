import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordInputWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.emailAddress,
            focusNode: passwordFocusNode,
            decoration: InputDecoration(
              hintText: AppStrings.password,
              hintStyle: const TextStyle(
                color: Color(0xFF111111), // Hint text color
                fontFamily: 'Inter', // Font family
                fontSize: 14.0, // Font size
                fontWeight: FontWeight.w400, // Font weight (normal)
                height: 1.42857, // Line height (20px / 14px)
              ),
              filled: true,
              fillColor: const Color(0xFFE9EDF9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(17, 17, 17, 0.10),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            ),
            onChanged: (value) {
              context
                  .read<LoginBloc>()
                  .add(PasswordChangedEvent(password: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter password';
              }

              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
