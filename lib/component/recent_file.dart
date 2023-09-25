import 'package:file_manager_app_ui/component/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentFile extends StatelessWidget {
  final String text;
  const RecentFile({
    super.key,
    required this.text,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 5.0,
              ),
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
                          const Icon(Icons.dashboard_rounded),
                          const SizedBox(width: 10),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.menu),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SingleChildScrollView(
                    child: Column(
                      children: [
                        // List Tile
                        CustomListTile(
                          title: 'Image.jpg',
                          subTitle: '100.4 MB',
                          icon: Icons.image,
                          color: Colors.deepPurple,
                        ),
                        Divider(),
                        CustomListTile(
                          title: 'Preview.mp4',
                          subTitle: '100.4 MB',
                          icon: Icons.music_note_outlined,
                          color: Colors.redAccent,
                        ),
                        Divider(),
                        CustomListTile(
                          title: 'Documents',
                          subTitle: '95.6 MB',
                          icon: Icons.document_scanner_outlined,
                          color: Colors.lightBlue,
                        ),
                      ],
                    ),
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
