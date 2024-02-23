import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class FetchNoteCubit extends Cubit<FetchNoteState> {
  FetchNoteCubit() : super(FetchNoteInitial());

  fetchAll() {
    emit(FetchNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(KNoteBox);
      List<NoteModel> allNotes = noteBox.values.toList();
      emit(FetchNoteSuccess(notes: allNotes));
    } catch (e) {
      emit(FetchNoteFailure(message: e.toString()));
    }
  }
}
