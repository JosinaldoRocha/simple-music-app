import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/widgets/seventh_type/seventh_chord_type_item_widget.dart';
import '../../../data/models/chord_subtype_model.dart';

class SeventhChordTypeListWidget extends ConsumerStatefulWidget {
  const SeventhChordTypeListWidget({
    Key? key,
    required this.chordSubtype,
  }) : super(key: key);
  final List<ChordSubtypeModel> chordSubtype;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeventhChordTypeListWidgetState();
}

class _SeventhChordTypeListWidgetState
    extends ConsumerState<SeventhChordTypeListWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => SeventhChordTypeItemWidget(
        title: widget.chordSubtype[index].title,
        cipher: widget.chordSubtype[index].cipher,
        onTap: () {
          Navigator.pushNamed(
            context,
            '/chord-list',
            arguments: widget.chordSubtype[index],
          );
        },
      ),
      itemCount: widget.chordSubtype.length,
    );
  }
}
