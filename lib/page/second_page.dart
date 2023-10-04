// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:file_manager_app_ui/component/custom_app_bar.dart';
import 'package:file_manager_app_ui/component/list_tile.dart';
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
            CustomAppBar(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextFile(text: 'Important file'),
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.lightBlue,
                                ),
                                child: Icon(
                                  Icons.image,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            color: Colors.lime,
                            height: 100,
                            width: 100,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.amberAccent,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      CustomListTile(
                        subTitle: '45MB',
                        title: 'New Concept Sketch',
                        icon: Icons.edit,
                        color: Colors.blue,
                      )
                    ],
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
