import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_page_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Edit Notes",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.done,
                size: 30,
              ))
        ],
      ),
      body: EditNotePageBody(),
    );
  }
}
