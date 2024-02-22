import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('KNoteBox');
  Hive.registerAdapter(NoteModelAdapter()); // this line to register my objects

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: HomePage(),
    );
  }
}

//علي الاغلب لكل اسكرين هيبقي ليها كيوبيت
