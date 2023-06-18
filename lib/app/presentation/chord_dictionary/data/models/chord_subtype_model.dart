class ChordSubtypeModel {
  String id;
  String chordTypeId;
  String title;
  String cipher;
  List<ChordSubtypeModel>? seventhChordTypes;

  ChordSubtypeModel({
    required this.id,
    required this.chordTypeId,
    required this.title,
    required this.cipher,
    this.seventhChordTypes,
  });
}
