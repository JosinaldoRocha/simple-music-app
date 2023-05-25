import '../../../data/models/chord_model.dart';

abstract class ChordListState {}

class InitialChordListState implements ChordListState {}

class LoadingChordListState implements ChordListState {}

class SuccessChordListState implements ChordListState {
  SuccessChordListState({required this.data});
  final List<ChordModel> data;
}

class FailureChordListState implements ChordListState {
  FailureChordListState({required this.erroMessage});
  final String erroMessage;
}
