import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.icon, required this.title, this.onpressed});
  final Icon icon;
  final String title;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        CustomIcon(
          onpressed: onpressed,
          icon: icon,
        ),
      ],
    );
  }
}
