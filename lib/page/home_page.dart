// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:file_manager_app_ui/component/custom_app_bar.dart';
import 'package:file_manager_app_ui/component/folder_structure.dart';
import 'package:file_manager_app_ui/page/second_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/list_tile.dart';
import '../component/text_file.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 13, 25),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            const SizedBox(height: 10),
            const CustomAppBar(),

            // heading text
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'HELLO !',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Hasnur Alam Ujjol ',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),

            // sub heading text

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Manage your files the best way',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // folder structure
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FolderStructure(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecondPage()));
                      },
                      color: Colors.blue,
                      icon: Icons.dashboard_outlined,
                      text: 'Internal Storage',
                      subTitle: '130 files, 120GB',
                    ),
                    const SizedBox(width: 10),
                    const FolderStructure(
                      color: Colors.redAccent,
                      icon: Icons.video_call,
                      text: 'All Vidoes',
                      subTitle: '13 files, 10GB',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // recent file + list Tile
            Expanded(
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
                          TextFile(
                            text: 'Recent File',
                            icon: Icons.dashboard,
                            secondIcon: Icons.list,
                          ),
                          CustomListTile(
                            subTitle: '100.4 MB',
                            title: 'Image.jpg',
                            icon: Icons.image,
                            color: Colors.purple.shade800,
                          ),
                          Divider(),
                          CustomListTile(
                            subTitle: '95.6 MB',
                            title: 'Preview.mp4',
                            icon: Icons.audiotrack,
                            color: Colors.red.shade400,
                          ),
                          Divider(),
                          CustomListTile(
                            subTitle: '95.6 MB',
                            title: 'Preview.mp4',
                            icon: Icons.description,
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
