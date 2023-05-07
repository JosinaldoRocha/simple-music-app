import 'package:flutter/material.dart';
import 'package:simple_music_app/app/app_routes.dart';
import 'package:simple_music_app/app/shared/themes/s_m_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SMTheme().lightTheme,
      routes: AppRoutes.all,
    );
  }
}
