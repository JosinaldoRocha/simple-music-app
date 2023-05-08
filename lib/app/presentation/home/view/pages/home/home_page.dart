import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/widgets/app_bar_home_widget.dart';

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
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AppBarHomeWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      BoxText.titleSmall('Caderno de cifras'),
                      const Expanded(child: SizedBox()),
                      CircleAvatar(
                        backgroundColor: lightColors.secondary,
                        radius: 70,
                        child: const Icon(
                          Icons.person,
                          size: 80,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
                height: 60,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('data'))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
