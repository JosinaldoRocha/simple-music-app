import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import '../../widgets/chord_type_list_widget.dart';

class ChordDictionaryPage extends StatefulWidget {
  const ChordDictionaryPage({Key? key}) : super(key: key);

  @override
  State<ChordDictionaryPage> createState() => _ChordDictionaryPageState();
}

class _ChordDictionaryPageState extends State<ChordDictionaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColors.secondary,
      body: Column(
        children: [
          const AppBarWidget(title: 'Dicionário de acordes'),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                top: 44,
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
              child: ChordTypeListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
