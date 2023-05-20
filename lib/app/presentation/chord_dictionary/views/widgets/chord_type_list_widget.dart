import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/widgets/chord_type_item_widget.dart';

class ChordTypeListWidget extends StatelessWidget {
  const ChordTypeListWidget({
    Key? key,
    required this.chordTypes,
  }) : super(key: key);
  final List<ChordTypeModel> chordTypes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => ChordTypeItemWidget(
        title: chordTypes[index].title,
        cipher: chordTypes[index].cipher,
        onTap: () {},
      ),
      separatorBuilder: (context, index) => const Space.x6(),
      itemCount: chordTypes.length,
    );
  }
}
