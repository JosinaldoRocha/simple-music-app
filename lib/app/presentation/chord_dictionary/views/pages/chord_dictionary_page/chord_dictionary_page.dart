import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/chord_dictionary_providers.dart';
import '../../widgets/chord_type_list_widget.dart';

class ChordDictionaryPage extends ConsumerStatefulWidget {
  const ChordDictionaryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChordDictionaryPageState();
}

class _ChordDictionaryPageState extends ConsumerState<ChordDictionaryPage> {
  int widgetIndex = 0;

  chanceIndex(int index) {
    setState(() {
      widgetIndex = index;
    });
  }

  Widget changeWidget() {
    if (widgetIndex == 0) {
      return ChordTypeListWidget(onTap: () => chanceIndex(1));
    } else if (widgetIndex == 1) {
      return const Center(
        child: Text('Segundo widget'),
      );
    } else if (widgetIndex == 2) {
      return const Center(
        child: Text('Terceiro widget'),
      );
    } else {
      return const Center(
        child: Text('Nada aqui'),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      Future.microtask(() => ref.read(chordTypeListProvider.notifier).load());
    });
  }

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
              child: changeWidget(),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: (widgetIndex > 0)
          ? FloatingActionButton(
              backgroundColor: lightColors.secondary,
              onPressed: () {
                setState(() {
                  if (widgetIndex == 1) {
                    widgetIndex = 0;
                  } else if (widgetIndex == 2) {
                    widgetIndex = 1;
                  }
                });
              },
              child: const Icon(Icons.arrow_back),
            )
          : Container(),
    );
  }
}
