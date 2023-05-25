import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/repositories/chord_repository.dart';
import 'chord_list_state.dart';

class ChordListStateNotifier extends StateNotifier<ChordListState> {
  ChordListStateNotifier({required this.chordRepository})
      : super(InitialChordListState());
  final ChordRepository chordRepository;

  Future<void> load(
    String chordTypeId,
    String chordSubtypeId,
  ) async {
    state = LoadingChordListState();

    try {
      final result =
          await chordRepository.getAllChords(chordTypeId, chordSubtypeId);
      state = SuccessChordListState(data: result);
    } catch (e) {
      state = FailureChordListState(erroMessage: 'Erro ao carregar dados');
    }
  }
}
