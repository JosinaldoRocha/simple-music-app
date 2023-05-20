import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/repositories/chord_repository.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/states/chord_type/chord_type_list_state.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/states/chord_type/chord_type_list_state_notifier.dart';

final chordRepositorProvider = Provider(
  (ref) => ChordRepository(),
);

final chordTypeListProvider =
    StateNotifierProvider<ChordTypeListStateNotifier, ChordTypeListState>(
  (ref) => ChordTypeListStateNotifier(
    chordRepository: ref.read(chordRepositorProvider),
  ),
);
