import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_subtype_model.dart';

class ChordTypeModel {
  String id;
  String title;
  String cipher;
  List<ChordSubtypeModel> chordSubtype;

  ChordTypeModel({
    required this.id,
    required this.title,
    required this.cipher,
    required this.chordSubtype,
  });
}
