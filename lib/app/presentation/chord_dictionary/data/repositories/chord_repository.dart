import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';

class ChordRepository {
  Future<List<ChordTypeModel>> getAllChordTypes() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      ChordTypeModel(
        id: 'a',
        title: 'Acordes naturais',
        cipher: '',
      ),
      ChordTypeModel(
        id: 'a#',
        title: 'Acordes sustenidos',
        cipher: '#',
      ),
      ChordTypeModel(
        id: 'ab',
        title: 'Acordes bemóis',
        cipher: 'b',
      ),
      ChordTypeModel(
        id: 'a7',
        title: 'Acordes com sétima',
        cipher: '7',
      ),
    ];
  }
}
