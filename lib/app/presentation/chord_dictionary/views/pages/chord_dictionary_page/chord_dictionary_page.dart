import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../providers/chord_dictionary_providers.dart';
import '../../states/chord_type/chord_type_list_state.dart';
import '../../widgets/chord_type_list_widget.dart';

class ChordDictionaryPage extends ConsumerStatefulWidget {
  const ChordDictionaryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChordDictionaryPageState();
}

class _ChordDictionaryPageState extends ConsumerState<ChordDictionaryPage> {
  @override
  void initState() {
    super.initState();
    setState(() {
      Future.microtask(() => ref.read(chordTypeListProvider.notifier).load());
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chordTypeListProvider);

    if (state is LoadingChordTypeListState) {
      return const LoadingWidget();
    } else if (state is SuccessChordTypeListState) {
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
                child: ChordTypeListWidget(chordType: state.data),
              ),
            ),
          ],
        ),
      );
    } else if (state is FailureChordTypeListState) {
      return Center(
        child: Text(state.erroMessage),
      );
    } else {
      return Container();
    }
  }
}
