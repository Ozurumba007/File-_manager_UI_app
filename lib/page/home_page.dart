import 'package:file_manager_app_ui/component/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // app bar
              SizedBox(height: 10),
              CustomAppBar(),
              // heading text

              // sub heading text

              // recent file + list Tile
            ],
          ),
        ),
      ),
    );
  }
}
