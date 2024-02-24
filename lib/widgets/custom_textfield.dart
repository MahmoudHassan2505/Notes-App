import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final String? initialValue;
  final int maxLine;
  final void Function(String?)? onSaved;

  const CustomTextfield(
      {super.key,
      req,
      required this.hintText,
      this.maxLine = 1,
      this.onSaved,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is Required";
        }
        return null;
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: const TextStyle(color: kPrimaryColor),
        hintText: hintText,
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
