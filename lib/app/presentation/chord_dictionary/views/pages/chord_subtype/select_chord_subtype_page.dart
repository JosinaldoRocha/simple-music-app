import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/chord_type_model.dart';
import '../../widgets/chord_subtype/chord_subtype_list_widget.dart';

class SelectChordSubtypePage extends ConsumerStatefulWidget {
  const SelectChordSubtypePage({
    super.key,
    required this.chordType,
  });
  final ChordTypeModel chordType;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectChordSubtypePageState();
}

class _SelectChordSubtypePageState
    extends ConsumerState<SelectChordSubtypePage> {
  @override
  Widget build(BuildContext context) {
    final chordSubtype = widget.chordType.chordSubtype;

    return Scaffold(
      backgroundColor: lightColors.secondary,
      body: Column(
        children: [
          AppBarWidget(title: widget.chordType.title),
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
              child: ChordSubtypeListWidget(chordSubtype: chordSubtype),
            ),
          ),
        ],
      ),
    );
  }
}
