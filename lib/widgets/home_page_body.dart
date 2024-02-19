import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [Note()],
      ),
    );
  }
}
