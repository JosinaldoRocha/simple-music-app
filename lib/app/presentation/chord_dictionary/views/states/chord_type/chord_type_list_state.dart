import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';

abstract class ChordTypeListState {}

class InitialChordTypeListState implements ChordTypeListState {}

class LoadingChordTypeListState implements ChordTypeListState {}

class SuccessChordTypeListState implements ChordTypeListState {
  SuccessChordTypeListState({required this.data});
  final List<ChordTypeModel> data;
}

class FailureChordTypeListState implements ChordTypeListState {
  FailureChordTypeListState({required this.erroMessage});
  final String erroMessage;
}
