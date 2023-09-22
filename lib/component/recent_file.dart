import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentFile extends StatelessWidget {
  final String text;
  final String title;
  final String subTitle;
  final IconData icon;

  const RecentFile({
    super.key,
    required this.text,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
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
                          Icon(Icons.dashboard_rounded),
                          SizedBox(width: 10),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(Icons.menu),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // List Tile
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      subTitle,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
