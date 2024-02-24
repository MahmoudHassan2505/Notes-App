import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';
import 'package:notes_app/widgets/edit_note_color_list.dart';

class EditNotePageBody extends StatefulWidget {
  final NoteModel noteModel;
  const EditNotePageBody({super.key, required this.noteModel});

  @override
  State<EditNotePageBody> createState() => _EditNotePageBodyState();
}

class _EditNotePageBodyState extends State<EditNotePageBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidator = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autoValidator,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomTextfield(
                initialValue: widget.noteModel.title,
                hintText: 'Title',
                onSaved: (value) {
                  widget.noteModel.title = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextfield(
                initialValue: widget.noteModel.subTitle,
                hintText: 'Note',
                maxLine: 5,
                onSaved: (value) {
                  widget.noteModel.subTitle = value!;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              EditNoteColorList(
                noteModel: widget.noteModel,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    widget.noteModel.save();
                    BlocProvider.of<FetchNoteCubit>(context).fetchAll();
                    Navigator.pop(context);
                  } else {
                    autoValidator = AutovalidateMode.always;
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
