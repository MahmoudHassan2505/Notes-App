import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_page_body.dart';

class EditNotePage extends StatelessWidget {
  final NoteModel noteModel;
  const EditNotePage({super.key, required this.noteModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Edit Notes",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: EditNotePageBody(
        noteModel: noteModel,
      ),
    );
  }
}
