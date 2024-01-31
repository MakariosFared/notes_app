import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16,),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16,),
              child: Text(
                'Build your career with Tharwat Samy',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 26,
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(right: 24),
             child: Text(
              'May21 , 2022',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16
              ),
          ),
           )
        ],
      ),
    );
  }
}