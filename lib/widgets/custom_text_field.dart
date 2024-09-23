import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder buildBorder([Color]) {
      return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color ?? Colors.white));
    }

    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimarycolor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: kPrimarycolor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimarycolor)),
    );
  }
}
