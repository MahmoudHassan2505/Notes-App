import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note.dart';
import 'package:notes_app/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNote();
              });
        },
        child: Icon(Icons.add),
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
      body: HomePageBody(),
    );
  }
}
