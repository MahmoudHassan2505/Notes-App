import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CustomTextfield()],
      ),
    );
  }
}
