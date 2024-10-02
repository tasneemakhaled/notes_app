import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_notes_body.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNotesBody(note: note),
    );
  }
}
