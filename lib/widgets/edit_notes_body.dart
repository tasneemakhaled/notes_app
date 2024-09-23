import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class editNotesBody extends StatelessWidget {
  const editNotesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hint: 'Title'),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: 'Content',
          maxLines: 5,
        )
      ],
    );
  }
}
