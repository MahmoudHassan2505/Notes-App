import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final int maxLine;

  const CustomTextfield(
      {super.key, req, required this.hintText, this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        labelText: 'Title',
        labelStyle: const TextStyle(color: kPrimaryColor),
        hintText: 'Title',
        hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: kPrimaryColor));
  }
}
