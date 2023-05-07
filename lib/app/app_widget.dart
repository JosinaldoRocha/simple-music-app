import 'package:flutter/material.dart';
import 'package:my_design_system/my_design_system.dart';
import 'package:simple_music_app/app/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      routes: AppRoutes.all,
    );
  }
}
