import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_subtype_model.dart';
import '../../../providers/chord_dictionary_providers.dart';
import '../../states/chord_type/chord_type_list_state.dart';
import '../../widgets/chord_type_list_widget.dart';

class ChordListPage extends ConsumerStatefulWidget {
  const ChordListPage({
    super.key,
    required this.chordSubtype,
  });
  final ChordSubtypeModel chordSubtype;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChordListPageState();
}

class _ChordListPageState extends ConsumerState<ChordListPage> {
  @override
  void initState() {
    super.initState();
    setState(() {
      //Future.microtask(() => ref.read(chordTypeListProvider.notifier).load());
    });
  }

  @override
  Widget build(BuildContext context) {
    //final state = ref.watch(chordTypeListProvider);

    // if (state is LoadingChordTypeListState) {
    //   return const LoadingWidget();
    // } else if (state is SuccessChordTypeListState) {
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
              //child: ChordTypeListWidget(chordType: state.data),
            ),
          ),
        ],
      ),
    );
    // } else if (state is FailureChordTypeListState) {
    //   return Center(
    //     child: Text(state.erroMessage),
    //   );
    // } else {
    //   return Container();
    // }
  }
}
