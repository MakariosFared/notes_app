import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'add_notes_state.dart';
class AddNotesCubit extends Cubit<AddNoteState>{
  AddNotesCubit() : super(AddNoteInitial());
}