import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ElevatedButtonWidget(),
            const Icon(
              Icons.person,
              size: 100,
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
