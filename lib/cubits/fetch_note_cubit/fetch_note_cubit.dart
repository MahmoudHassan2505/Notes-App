import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_states.dart';

class FetchNoteCubit extends Cubit<FetchNoteState> {
  FetchNoteCubit() : super(FetchNoteInitial());
}
