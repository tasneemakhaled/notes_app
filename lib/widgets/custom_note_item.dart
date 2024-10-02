import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNotes();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(fontSize: 24),
                ),
                subtitle: Text(
                  note.subTitle,
                  style: TextStyle(
                      fontSize: 16, color: Colors.white.withOpacity(.5)),
                ),
                trailing: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.trash,
                  ),
                  onPressed: () {
                    note.delete();
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.white.withOpacity(.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
