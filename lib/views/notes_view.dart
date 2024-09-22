import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Notes'),
        //   actions: [
        //     IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        //   ],
        // ),
        body: CustomAppbar(),
      ),
    );
  }
}
