import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordWidget extends StatelessWidget {
  final FocusNode passwordFocusNode;
  const PasswordWidget({super.key, required this.passwordFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
        buildWhen: (previous, current) => previous.password != current.password,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.emailAddress,
            focusNode: passwordFocusNode,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: const TextStyle(
                color: Color(0xFF111111),
                fontFamily: 'Inter',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                height: 1.42857,
              ),
              filled: true,
              fillColor: const Color(0xFFE9EDF9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(199, 22, 22, 0.094),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            ),
            onChanged: (value) {
              context
                  .read<SignupBloc>()
                  .add(PasswordChangedEvent(password: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'password is required';
              }

              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
