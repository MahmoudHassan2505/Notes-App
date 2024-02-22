import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/pages/home_page.dart';
import 'package:notes_app/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<NoteModel>(NoteBox);
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter()); // this line to register my objects

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Notes App',
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: HomePage(),
      ),
    );
  }
}

//علي الاغلب لكل اسكرين هيبقي ليها كيوبيت


//Bloc observer: this to track the states of the application
