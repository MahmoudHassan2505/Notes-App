import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7, top: 8),
      padding: EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            title: Text(
              'Flutter Tip',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle: Text(
              'Build Your App With Me',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
          Text(
            'May 21,2023',
            style: TextStyle(
              fontSize: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

//محطش ارتفاع للكونتينر علشان لو الويدجيت الي جوه كبرت الشكل هيضرب
//علشان كده استخدم باددنج 
//ُExpanded widget: بخلي الويدجيت تاخد المساحه المتاحه ليها
