import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: KColorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              current = index;
              BlocProvider.of<AddNoteCubit>(context).pickedColor = current;
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
