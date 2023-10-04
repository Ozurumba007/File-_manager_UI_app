import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShortCutDetail extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final Color containerColor;
  final String title;
  final String subTitle;

  const ShortCutDetail({
    super.key,
    required this.iconColor,
    required this.containerColor,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: containerColor,
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 50,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            // color: Colors.white,
          ),
        ),
      ],
    );
  }
}
