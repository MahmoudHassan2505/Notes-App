import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final Color color;
  final bool isActive;
  const ColorItem({
    super.key,
    required this.color,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: isActive
          ? CircleAvatar(
              radius: 30,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
    );
  }
}
