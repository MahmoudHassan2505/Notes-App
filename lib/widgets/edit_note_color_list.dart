import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  final NoteModel noteModel;
  const EditNoteColorList({super.key, required this.noteModel});

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  @override
  Widget build(BuildContext context) {
    int current = KColorList.indexOf(Color(widget.noteModel.color));
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: KColorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              current = index;
              widget.noteModel.color = KColorList[current].value;
              setState(() {});
            },
            child: ColorItem(
              color: KColorList[index],
              isActive: current == index,
            ),
          );
        },
      ),
    );
  }
}
