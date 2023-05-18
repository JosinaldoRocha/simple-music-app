import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/pages/chord_dictionary_page/chord_dictionary_page.dart';
import 'package:simple_music_app/app/presentation/home/view/pages/home/home_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get all => {
        '/': (context) => const HomePage(),
        '/chord-dictionary': (context) => const ChordDictionaryPage(),
      };

  static dynamic getArgs(context) => ModalRoute.of(context)?.settings.arguments;
}
