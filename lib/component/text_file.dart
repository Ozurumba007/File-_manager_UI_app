import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFile extends StatelessWidget {
  final IconData? icon;
  final IconData? secondIcon;
  final String text;

  const TextFile({
    super.key,
    required this.text,
    this.icon,
    this.secondIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            // color: Colors.white,
          ),
        ),
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(secondIcon),
            ),
          ],
        ),
      ],
    );
  }
}
