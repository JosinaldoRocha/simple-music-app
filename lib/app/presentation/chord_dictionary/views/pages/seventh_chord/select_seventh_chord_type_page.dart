import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_subtype_model.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/widgets/seventh_type/seventh_chord_type_list_widget.dart';

class SelectSeventhChordTypePage extends ConsumerStatefulWidget {
  const SelectSeventhChordTypePage({
    super.key,
    required this.chordType,
  });
  final List<ChordSubtypeModel> chordType;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectSeventhChordTypePageState();
}

class _SelectSeventhChordTypePageState
    extends ConsumerState<SelectSeventhChordTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColors.secondary,
      body: Column(
        children: [
          const AppBarWidget(title: 'Selecione a variação'),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SeventhChordTypeListWidget(chordSubtype: widget.chordType),
            ),
          ),
        ],
      ),
    );
  }
}
