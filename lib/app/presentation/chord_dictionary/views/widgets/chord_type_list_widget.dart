import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/widgets/chord_type_item_widget.dart';
import '../../providers/chord_dictionary_providers.dart';
import '../states/chord_type/chord_type_list_state.dart';

class ChordTypeListWidget extends ConsumerStatefulWidget {
  const ChordTypeListWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  final Function() onTap;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChordTypeListWidgetState();
}

class _ChordTypeListWidgetState extends ConsumerState<ChordTypeListWidget> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(chordTypeListProvider.notifier).load());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chordTypeListProvider);

    if (state is LoadingChordTypeListState) {
      return const LoadingWidget();
    } else if (state is SuccessChordTypeListState) {
      return ListView.separated(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => ChordTypeItemWidget(
          title: state.data[index].title,
          cipher: state.data[index].cipher,
          onTap: widget.onTap,
        ),
        separatorBuilder: (context, index) => const Space.x6(),
        itemCount: state.data.length,
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
