import 'package:flutter/material.dart';
import 'package:my_note_app/views/widgets/custom_Search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
