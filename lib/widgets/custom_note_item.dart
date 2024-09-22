import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(fontSize: 24),
              ),
              subtitle: Text(
                'Build your career with tharwat samy',
                style: TextStyle(
                    fontSize: 16, color: Colors.white.withOpacity(.5)),
              ),
              trailing: IconButton(
                icon: Icon(
                  FontAwesomeIcons.trash,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              '21 may, 2022',
              style: TextStyle(color: Colors.white.withOpacity(.5)),
            ),
          ),
        ],
      ),
    );
  }
}
