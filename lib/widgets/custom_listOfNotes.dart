import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class CustomListOfNotes extends StatelessWidget {
  CustomListOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // expanded is put to list view and wrapped in flex widget column or row
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: CustomNoteItem(),
            );
          }),
    );
  }
}
