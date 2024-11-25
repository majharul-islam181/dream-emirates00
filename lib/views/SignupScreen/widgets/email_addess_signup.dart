import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAddessSignup extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailAddessSignup({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            decoration: InputDecoration(
              hintText: 'Email Address',
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
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(17, 17, 17, 0.10),
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            ),
            onChanged: (value) {
              context.read<SignupBloc>().add(EmailChangedEvent(email: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is required';
              }

              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
