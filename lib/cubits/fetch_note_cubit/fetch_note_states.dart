import 'package:notes_app/models/note_model.dart';

class FetchNoteState {}

class FetchNoteInitial extends FetchNoteState {}

class FetchNoteLoading extends FetchNoteState {}

class FetchNoteSuccess extends FetchNoteState {
  final List<NoteModel> notes;

  FetchNoteSuccess({required this.notes});
}

class FetchNoteFailure extends FetchNoteState {
  final String message;

  FetchNoteFailure({required this.message});
}
