import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/fetch_note_cubit/fetch_note_cubit.dart';
import 'package:notes_app/widgets/add_note.dart';
import 'package:notes_app/widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<FetchNoteCubit>(context).fetchAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNote();
              });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Notes",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      body: const HomePageBody(),
    );
  }
}
