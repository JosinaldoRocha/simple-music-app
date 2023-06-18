import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/pages/chord_list/chord_list_page.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/pages/chord_subtype/select_chord_subtype_page.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/pages/chord_type/select_chord_type_page.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/pages/seventh_chord/select_seventh_chord_type_page.dart';
import 'package:simple_music_app/app/presentation/home/view/pages/home/home_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> get all => {
        '/': (context) => const HomePage(),
        '/select-chord-type': (context) => const SelectChordTypePage(),
        '/select-chord-subtype': (context) =>
            SelectChordSubtypePage(chordType: getArgs(context)),
        '/chord-list': (context) =>
            ChordListPage(chordSubtype: getArgs(context)),
        '/select-seventh-chord-type': (context) =>
            SelectSeventhChordTypePage(chordType: getArgs(context)),
      };

  static dynamic getArgs(context) => ModalRoute.of(context)?.settings.arguments;
}
