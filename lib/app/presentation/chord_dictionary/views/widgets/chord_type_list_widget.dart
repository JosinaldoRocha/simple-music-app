import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/widgets/chord_type_item_widget.dart';

class ChordTypeListWidget extends StatelessWidget {
  const ChordTypeListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        ChordTypeItemWidget(
          title: 'Acordes naturais',
          onTap: () {},
        ),
        const Space.x10(),
        ChordTypeItemWidget(
          title: 'Acordes sustenidos',
          onTap: () {},
        ),
        const Space.x10(),
        ChordTypeItemWidget(
          title: 'Acordes bemóis',
          onTap: () {},
        ),
        const Space.x10(),
        ChordTypeItemWidget(
          title: 'Acordes com sétima',
          onTap: () {},
        ),
      ],
    );
  }
}
