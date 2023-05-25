import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_subtype_model.dart';
import '../../../providers/chord_dictionary_providers.dart';
import '../../states/chords/chord_list_state.dart';
import '../../widgets/chord_item_widget.dart';

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
      Future.microtask(() => ref.read(chordListProvider.notifier).load(
            widget.chordSubtype.chordTypeId,
            widget.chordSubtype.id,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chordListProvider);

    if (state is LoadingChordListState) {
      return const LoadingWidget();
    } else if (state is SuccessChordListState) {
      return Scaffold(
        backgroundColor: lightColors.secondary,
        body: Column(
          children: [
            AppBarWidget(
                title: 'Acordes ${widget.chordSubtype.title.toLowerCase()}'),
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
                child: ListView.separated(
                    itemBuilder: (context, index) => ChordItemWidget(
                          title:
                              '${state.data[index].name} / ${state.data[index].fullName}',
                          cipher: state.data[index].cipher,
                          onTap: () {},
                        ),
                    separatorBuilder: (context, index) => const Space.x3(),
                    itemCount: state.data.length),
              ),
            ),
          ],
        ),
      );
    } else if (state is FailureChordListState) {
      return Center(
        child: Text(state.erroMessage),
      );
    } else {
      return Container();
    }
  }
}
