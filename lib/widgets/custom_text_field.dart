import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder buildBorder([Color]) {
      return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color ?? Colors.white));
    }

    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
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
