import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/edit_page.dart';

class Note extends StatelessWidget {
  final NoteModel noteModel;
  const Note({super.key, required this.noteModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNotePage(),
            ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 7, top: 8),
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                noteModel.subTitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              noteModel.date.substring(0, 16),
              style: const TextStyle(
                fontSize: 8,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//محطش ارتفاع للكونتينر علشان لو الويدجيت الي جوه كبرت الشكل هيضرب
//علشان كده استخدم باددنج 
//ُExpanded widget: بخلي الويدجيت تاخد المساحه المتاحه ليها
//
//statless widget must make the constructor cons 
//if we can't do that we convert it to statfulwidget
