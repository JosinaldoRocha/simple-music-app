import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/home/view/pages/home/home_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get all => {
        '/': (context) => const HomePage(),
      };

  static dynamic getArgs(context) => ModalRoute.of(context)?.settings.arguments;
}
