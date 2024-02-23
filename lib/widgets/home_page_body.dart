import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNoteCubit, FetchNoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<FetchNoteCubit>(context).allNotes!;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: notes.length,
            itemBuilder: ((context, index) => Note()),
          ),
        );
      },
    );
  }
}
