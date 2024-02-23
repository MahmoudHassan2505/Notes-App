import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class FetchNoteCubit extends Cubit<FetchNoteState> {
  FetchNoteCubit() : super(FetchNoteInitial());
  List<NoteModel>? allNotes;
  fetchAll() {
    var noteBox = Hive.box<NoteModel>(KNoteBox);
    allNotes = noteBox.values.toList();
  }
}
