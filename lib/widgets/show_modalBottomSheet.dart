import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddingShowModalbottomsheet extends StatelessWidget {
  const AddingShowModalbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
