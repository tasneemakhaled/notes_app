import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder buildBorder([Color]) {
      return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color ?? Colors.white));
    }

    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
      maxLines: maxLines,
      cursorColor: const Color(0xff588157),
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: Color(0xff6c584c),
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(
            const Color(0xff588157),
          )),
    );
  }
}
