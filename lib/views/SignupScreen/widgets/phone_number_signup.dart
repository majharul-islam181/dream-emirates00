import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhoneNumberSignup extends StatelessWidget {
  final FocusNode phoneNumberFocusNode;
  const PhoneNumberSignup({super.key, required this.phoneNumberFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
        buildWhen: (previous, current) =>
            previous.phoneNumber != current.phoneNumber,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.phone,
            focusNode: phoneNumberFocusNode,
            decoration: InputDecoration(
              hintText: 'Phone number',
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
                  .read<SignupBloc>()
                  .add(PhoneNumberChangedEvent(phoneNumber: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'phone number is required';
              }

              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
