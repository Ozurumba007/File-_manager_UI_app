// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:file_manager_app_ui/component/custom_app_bar.dart';
import 'package:file_manager_app_ui/component/list_tile.dart';
import 'package:file_manager_app_ui/component/short_cut_detail.dart';
import 'package:file_manager_app_ui/component/text_file.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 13, 25),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5),
            CustomAppBar(),
            SizedBox(height: 5),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextFile(
                          text: 'Important file',
                          icon: Icons.dashboard,
                          secondIcon: Icons.list,
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShortCutDetail(
                              iconColor: Colors.white,
                              containerColor: Colors.blue,
                              icon: Icons.image,
                              title: 'Image.jpg',
                              subTitle: '100.4 MB',
                            ),
                            ShortCutDetail(
                              iconColor: Colors.white,
                              containerColor: Colors.yellow.shade700,
                              icon: Icons.audiotrack,
                              title: 'Preview.mp4',
                              subTitle: '45.5 MB',
                            ),
                            ShortCutDetail(
                              iconColor: Colors.white,
                              containerColor: Colors.redAccent,
                              icon: Icons.description,
                              title: 'Documents',
                              subTitle: '99.9 MB',
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ShortCutDetail(
                              iconColor: Colors.white,
                              containerColor: Colors.lightBlue.shade200,
                              icon: Icons.rocket_launch,
                              title: 'Image.jpg',
                              subTitle: '100.4 MB',
                            ),
                            ShortCutDetail(
                              iconColor: Colors.white,
                              containerColor: Colors.deepPurple,
                              icon: Icons.videocam_rounded,
                              title: 'Preview.mp4',
                              subTitle: '45.5 MB',
                            ),
                            ShortCutDetail(
                              iconColor: Colors.white,
                              containerColor: Colors.green.shade700,
                              icon: Icons.design_services,
                              title: 'Documents',
                              subTitle: '99.9 MB',
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        TextFile(
                          text: 'Recent Download',
                          secondIcon: Icons.restore_sharp,
                        ),
                        CustomListTile(
                          subTitle: '100.4 MB',
                          title: 'New Concept Sketch',
                          icon: Icons.edit_calendar,
                          color: Colors.blue,
                        ),
                        Divider(),
                        CustomListTile(
                          subTitle: '45.10 MB',
                          title: 'easy work.doc',
                          icon: Icons.design_services,
                          color: Colors.red,
                        ),
                        Divider(),
                        CustomListTile(
                          subTitle: '95.6 MB',
                          title: 'Exam.pdf',
                          icon: Icons.description,
                          color: Colors.lightBlue.shade400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
