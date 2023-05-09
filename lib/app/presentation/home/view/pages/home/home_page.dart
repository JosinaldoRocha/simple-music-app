import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_app_bar_widget.dart';
import 'package:simple_music_app/app/presentation/home/widgets/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: const [
            HomeAppBarWidget(),
            Padding(
              padding: EdgeInsets.all(20),
              child: HomeBody(),
            ),
          ],
        ),
      ),
    );
  }
}
