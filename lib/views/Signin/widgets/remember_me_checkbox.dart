// ignore_for_file: library_private_types_in_public_api

import 'package:dream_emirates/config/extension/spaceWidthExtension.dart';
import 'package:dream_emirates/views/widgets/global_text_widget.dart';
import 'package:flutter/material.dart';

class RememberMeCheckbox extends StatefulWidget {
  const RememberMeCheckbox({super.key});

  @override
  _RememberMeCheckboxState createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked; // Toggle the checkbox state
        });
      },
      child: Row(
        children: [
          Container(
            width: 18.0,
            height: 18.0,
            decoration: BoxDecoration(
              color: _isChecked ? Colors.black : Colors.transparent,
              border: Border.all(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(5.0), // Rounded corners
            ),
            child: _isChecked
                ? const Icon(Icons.check, color: Colors.white, size: 13.0)
                : null, // Show check icon when checked
          ),

          8.w, // Ensure to use the appropriate spacing utility
          const GlobalTextWidget(
            title: 'Remember me',
            fontWeight: 400,
            fontSize: 14,
            color: Color(0xFF252A31),
          ),
        ],
      ),
    );
  }
}


    // top: 393,
    //   left: 24,