import 'package:flutter/material.dart';
import '../../../data/models/chord_subtype_model.dart';
import 'chord_subtype_item_widget.dart';

class ChordSubtypeListWidget extends StatelessWidget {
  const ChordSubtypeListWidget({
    Key? key,
    required this.chordSubtype,
  }) : super(key: key);
  final List<ChordSubtypeModel> chordSubtype;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => ChordSubtypeItemWidget(
        title: chordSubtype[index].title,
        cipher: chordSubtype[index].cipher,
        onTap: () {
          if (chordSubtype[index].chordTypeId == 'acordeComSetima') {
            Navigator.pushNamed(
              context,
              '/select-seventh-chord-type',
              arguments: chordSubtype[index],
            );
          } else {
            Navigator.pushNamed(
              context,
              '/chord-list',
              arguments: chordSubtype[index],
            );
          }
        },
      ),
      itemCount: chordSubtype.length,
    );
  }
}
