import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FolderStructure extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final String subTitle;
  const FolderStructure({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              subTitle,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
