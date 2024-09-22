import 'package:flutter/material.dart';
import 'package:notes_app/widgets/show_modalBottomSheet.dart';
import 'package:notes_app/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddingShowModalbottomsheet();
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
