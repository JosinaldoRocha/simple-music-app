import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';
import 'chord_type_item_widget.dart';

class ChordTypeListWidget extends ConsumerStatefulWidget {
  const ChordTypeListWidget({
    Key? key,
    required this.chordType,
  }) : super(key: key);
  final List<ChordTypeModel> chordType;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChordTypeListWidgetState();
}

class _ChordTypeListWidgetState extends ConsumerState<ChordTypeListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => ChordTypeItemWidget(
        title: widget.chordType[index].title,
        cipher: widget.chordType[index].cipher,
        onTap: () {
          if (widget.chordType[index].id == 'acordeComSetima') {
            Navigator.pushNamed(
              context,
              '/select-seventh-chord-type',
              arguments: widget.chordType[index].chordSubtype,
            );
          } else {
            Navigator.pushNamed(
              context,
              '/select-chord-subtype',
              arguments: widget.chordType[index],
            );
          }
        },
      ),
      separatorBuilder: (context, index) => const Space.x6(),
      itemCount: widget.chordType.length,
    );
  }
}
