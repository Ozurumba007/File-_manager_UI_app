import 'package:file_manager_app_ui/component/custom_app_bar.dart';
import 'package:file_manager_app_ui/component/folder_structure.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 13, 25),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // app bar
              SizedBox(height: 10),
              CustomAppBar(),

              // heading text
              SizedBox(height: 20),
              Text(
                'HELLO !',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hasnur Alam Ujjol ',
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),

              // sub heading text

              Text(
                'Manage your files the best way',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 50),

              // folder structure
              FolderStructure(),

              // recent file + list Tile
            ],
          ),
        ),
      ),
    );
  }
}
