import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_subtype_model.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';

class ChordRepository {
  Future<List<ChordTypeModel>> getAllChordTypes() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      ChordTypeModel(
        id: 'a',
        title: 'Acordes naturais',
        cipher: '',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'aM',
            title: 'Maiores',
            cipher: 'M',
          ),
          ChordSubtypeModel(
            id: 'am',
            title: 'Menores',
            cipher: 'm',
          ),
        ],
      ),
      ChordTypeModel(
        id: 'a#',
        title: 'Acordes sustenidos',
        cipher: '#',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'a#M',
            title: 'Maiores',
            cipher: '#',
          ),
          ChordSubtypeModel(
            id: 'a#m',
            title: 'Menores',
            cipher: '#m',
          ),
        ],
      ),
      ChordTypeModel(
        id: 'ab',
        title: 'Acordes bemóis',
        cipher: 'b',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'abM',
            title: 'Maiores',
            cipher: 'b',
          ),
          ChordSubtypeModel(
            id: 'abm',
            title: 'Menores',
            cipher: 'bm',
          ),
        ],
      ),
      ChordTypeModel(
        id: 'a7',
        title: 'Acordes com sétima',
        cipher: '7',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'aM7M',
            title: 'Maiores com sétima maior',
            cipher: '7M',
          ),
          ChordSubtypeModel(
            id: 'aM7m',
            title: 'Maiores com sétima menor',
            cipher: '7',
          ),
          ChordSubtypeModel(
            id: 'am7m',
            title: 'Menores com sétima menor',
            cipher: '7m',
          ),
        ],
      ),
    ];
  }
}
