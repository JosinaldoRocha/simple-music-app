import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';

class ChordRepository {
  Future<List<ChordTypeModel>> getAllChordTypes() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      ChordTypeModel(
        title: 'Acordes naturais',
        cipher: '',
      ),
      ChordTypeModel(
        title: 'Acordes sustenidos',
        cipher: '#',
      ),
      ChordTypeModel(
        title: 'Acordes bemóis',
        cipher: 'b',
      ),
      ChordTypeModel(
        title: 'Acordes com sétima',
        cipher: '7',
      ),
    ];
  }
}
