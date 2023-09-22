import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 4, 5, 22),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.menu, color: Colors.white),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 4, 5, 22),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.search, color: Colors.white),
        ),
      ],
    );
  }
}
