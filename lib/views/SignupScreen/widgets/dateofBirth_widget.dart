// ignore_for_file: library_private_types_in_public_api

import 'package:dream_emirates/bloc/signup_bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/*
class DateofbirthWidget extends StatelessWidget {
  final FocusNode dateOfBirthFocusNode;
  const DateofbirthWidget({super.key, required this.dateOfBirthFocusNode});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (previous, current) =>
          previous.dateOfBirth != current.dateOfBirth,
      builder: (context, state) {
        print("Rebuilding UI with dateOfBirth: ${state.dateOfBirth}");

        return GestureDetector(
          onTap: () {
            // Show modal bottom sheet for date picker
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              builder: (context) {
                DateTime?
                    selectedDate; // Local variable to store the selected date

                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Select Date of Birth',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: CalendarDatePicker(
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            onDateChanged: (date) {
                              selectedDate = date; // Update the selected date
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            // Default to today if no date is selected
                            selectedDate ??= DateTime.now();

                            // Format the selected date
                            final formattedDate =
                                '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';

                            print(formattedDate);
                            // Emit the selected date to the SignupBloc
                            context.read<SignupBloc>().add(
                                  DateOfBirthChangedEvent(
                                    dateOfBirth: formattedDate,
                                  ),
                                );

                            // Close the bottom sheet
                            Navigator.pop(context);
                          },
                          child: const Text('Done'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: AbsorbPointer(
            child: TextFormField(
              focusNode: dateOfBirthFocusNode,
              decoration: InputDecoration(
                hintText: state.dateOfBirth.isEmpty
                    ? 'Date of birth'
                    : state.dateOfBirth,
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
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 12.0,
                  horizontal: 12.0,
                ),
              ),
              validator: (value) {
                if (state.dateOfBirth.isEmpty) {
                  return 'Date of birth is required';
                }
                return null;
              },
              readOnly: true,
            ),
          ),
        );
      },
    );
  }
}


class DateofbirthWidget extends StatelessWidget {
  const DateofbirthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      buildWhen: (previous, current) =>
          previous.dateOfBirth != current.dateOfBirth,
      builder: (context, state) {
        print("Rebuilding UI with dateOfBirth: ${state.dateOfBirth}");

        return GestureDetector(
          onTap: () {
            // Open the date picker in a bottom sheet
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              builder: (context) {
                DateTime? selectedDate;

                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Select Date of Birth',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Expanded(
                          child: CalendarDatePicker(
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            onDateChanged: (date) {
                              selectedDate = date;
                            },
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            // Use today's date if no date is selected
                            selectedDate ??= DateTime.now();

                            // Format the selected date
                            final formattedDate =
                                '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';

                            print("Selected date: $formattedDate");

                            // Dispatch the event to update the state
                            context.read<SignupBloc>().add(
                                  DateOfBirthChangedEvent(
                                    dateOfBirth: formattedDate,
                                  ),
                                );

                            print('date of birth: ${state.dateOfBirth}');

                            // Close the bottom sheet
                            Navigator.pop(context);
                          },
                          child: const Text('Done'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: TextFormField(
            decoration: InputDecoration(
              hintText: state.dateOfBirth.isEmpty
                  ? 'Date of birth'
                  : state.dateOfBirth,
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
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 12.0,
              ),
            ),
            readOnly: true,
            onTap: () {
              // Trigger the same date picker on tap
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                builder: (context) {
                  DateTime? selectedDate;

                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Select Date of Birth',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Expanded(
                            child: CalendarDatePicker(
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                              onDateChanged: (date) {
                                selectedDate = date;
                              },
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              selectedDate ??= DateTime.now();
                              final formattedDate =
                                  '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';

                              context.read<SignupBloc>().add(
                                    DateOfBirthChangedEvent(
                                      dateOfBirth: formattedDate,
                                    ),
                                  );

                              Navigator.pop(context);
                            },
                            child: const Text('Done'),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            validator: (value) {
              if (state.dateOfBirth.isEmpty) {
                return 'Date of birth is required';
              }
              return null;
            },
          ),
        );
      },
    );
  }
}
*/

import 'package:intl/intl.dart';

class DatePickerBottomSheet extends StatefulWidget {
  const DatePickerBottomSheet({super.key});

  @override
  _DatePickerBottomSheetState createState() => _DatePickerBottomSheetState();
}

class _DatePickerBottomSheetState extends State<DatePickerBottomSheet> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  void _showDatePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .7,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Enter your Date of birth',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                CalendarDatePicker(
                  initialDate: _selectedDate ?? DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  onDateChanged: (DateTime date) {
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    if (_selectedDate != null) {
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(_selectedDate!);
                      _dateController.text = formattedDate;
                      context.read<SignupBloc>().add(
                            DateOfBirthChangedEvent(
                              dateOfBirth: formattedDate,
                            ),
                          );
                    }

                    Navigator.pop(context);
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * .05,
                    width: MediaQuery.sizeOf(context).width * .9,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFE8EDF1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Center(child: Text("Done")),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(builder: (context, index) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _dateController,
            readOnly: true,
            decoration: InputDecoration(
              suffixIcon: Image.asset(
                'assets/icons/calendar-forsingup.png',
                height: 15,
              ),
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
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 12.0,
              ),
            ),
            onTap: () => _showDatePicker(context),
          ),
        ],
      );
    });
  }
}
