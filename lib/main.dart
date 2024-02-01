import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_note_app/constants.dart';
import 'package:my_note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
        fontFamily: "Poppins",
      ),
      home: const NotesView(),
    );
  }
}
