import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_note_app/constants.dart';
import 'package:my_note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_note_app/models/note_model.dart';
import 'package:my_note_app/simple_bloc_observer.dart';
import 'package:my_note_app/views/notes_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: false,
          fontFamily: "Poppins",
        ),
        home: const NotesView(),
      ),
    );
  }
}
