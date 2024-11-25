// ignore_for_file: must_be_immutable

/* 
import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:dream_emirates/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final FocusNode emailFocusNode;
  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (current, previous) => current.email != previous.email,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.number,
            focusNode: emailFocusNode,
            decoration: InputDecoration(
              hintText: AppStrings.emailHintText,
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
              context.read<LoginBloc>().add(EmailChangedEvent(email: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please provide email';
              }
              // if (!Validations.emailValidator(value)) {
              //   return "Email is not correct";
              // }
              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
*/
/*
import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class EmailInputWidget extends StatefulWidget {
  final FocusNode emailFocusNode;

  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  _EmailInputWidgetState createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? selectedCountry;
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.phone,
          focusNode: widget.emailFocusNode,
          decoration: InputDecoration(
            hintText: 'Enter your phone number',
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
            prefixIcon: GestureDetector(
              onTap: _showCountryPicker,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 5),
                  if (selectedCountry != null)
                    selectedCountry!.flagImage(
                        width: 24,
                        fit: BoxFit.fitWidth), // Call flagImage as a function
                  const SizedBox(width: 4),
                  Text(
                    selectedCountry != null
                        ? selectedCountry!.dialCode
                        : '+1', // Default country code
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Icon(Icons.arrow_drop_down),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ),
          onChanged: (value) {
            phoneNumber = value;
            print('phone number : $phoneNumber');

            phoneNumber =
                '${selectedCountry?.dialCode ?? '1'}$value'.replaceAll('+', '');
            context.read<LoginBloc>().add(
                  EmailChangedEvent(email: phoneNumber),
                );
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please provide a phone number';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }

  void _showCountryPicker() async {
    final country = await countryPicker.showPicker(context: context);
    if (country != null) {
      setState(() {
        selectedCountry = country;
      });
    }
  }

//   void _showCountryPicker() async {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     builder: (BuildContext context) {
//       return DraggableScrollableSheet(
//         initialChildSize: 0.5, // Customize this to set initial height as a percentage of screen height
//         minChildSize: 0.3,     // Minimum height when collapsed
//         maxChildSize: 0.7,     // Maximum height when expanded
//         builder: (context, scrollController) {
//           return Container(
//             padding: const EdgeInsets.symmetric(vertical: 8.0),
//             child: countryPicker.buildDialog(
//               context,
//               scrollController: scrollController,
//               onSelect: (CountryCode country) {
//                 setState(() {
//                   selectedCountry = country;
//                 });
//                 Navigator.of(context).pop();
//               },
//             ),
//           );
//         },
//       );
//     },
//   );
// }
}
*/

import 'package:dream_emirates/bloc/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class EmailInputWidget extends StatefulWidget {
  final FocusNode emailFocusNode;

  const EmailInputWidget({super.key, required this.emailFocusNode});

  @override
  _EmailInputWidgetState createState() => _EmailInputWidgetState();
}

class _EmailInputWidgetState extends State<EmailInputWidget> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? selectedCountry;
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.phone,
          focusNode: widget.emailFocusNode,
          decoration: InputDecoration(
            hintText: 'Enter your phone number',
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
            prefixIcon: GestureDetector(
              onTap: _showCountryPicker,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: 5),
                  if (selectedCountry != null)
                    selectedCountry!.flagImage(
                        width: 24,
                        fit: BoxFit.fitWidth), // Call flagImage as a function
                  const SizedBox(width: 4),
                  Text(
                    selectedCountry != null
                        ? selectedCountry!.dialCode
                        : '+1', // Default country code
                    style: const TextStyle(fontSize: 16),
                  ),
                  const Icon(Icons.arrow_drop_down),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ),
          onChanged: (value) {
            phoneNumber = value;
            print('phone number : $phoneNumber');

            phoneNumber =
                '${selectedCountry?.dialCode ?? '1'}$value'.replaceAll('+', '');
            context.read<LoginBloc>().add(
                  EmailChangedEvent(email: phoneNumber),
                );
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please provide a phone number';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }

  void _showCountryPicker() async {
    final country = await countryPicker.showPicker(context: context);
    if (country != null) {
      setState(() {
        selectedCountry = country;
      });
    }
  }
}
