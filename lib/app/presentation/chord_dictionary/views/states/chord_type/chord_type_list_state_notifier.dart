import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/repositories/chord_repository.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/views/states/chord_type/chord_type_list_state.dart';

class ChordTypeListStateNotifier extends StateNotifier<ChordTypeListState> {
  ChordTypeListStateNotifier({required this.chordRepository})
      : super(InitialChordTypeListState());
  final ChordRepository chordRepository;

  Future<void> load() async {
    state = LoadingChordTypeListState();

    try {
      final result = await chordRepository.getAllChordTypes();
      state = SuccessChordTypeListState(data: result);
    } catch (e) {
      state = FailureChordTypeListState(erroMessage: 'Erro ao carregar dados');
    }
  }
}
