import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/show_modalBottomSheet.dart';

import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimarycolor,
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return AddingShowModalbottomsheet();
              },
            );
          },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
