import 'package:file_manager_app_ui/component/list_tile.dart';
import 'package:file_manager_app_ui/component/text_file.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Files extends StatelessWidget {
  final String text;
  final Widget? child;
  const Files({
    super.key,
    required this.text,
    this.child,
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
                  TextFile(text: text),
                  Column(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
