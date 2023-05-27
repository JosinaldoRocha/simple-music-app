import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_model.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_subtype_model.dart';
import 'package:simple_music_app/app/presentation/chord_dictionary/data/models/chord_type_model.dart';

class ChordRepository {
  final _firestore = FirebaseFirestore.instance;

  Future<List<ChordModel>> getAllChords(
    String chordTypeId,
    String chordSubtypeId,
  ) async {
    final getDocuments = await _firestore
        .collection('chords')
        .where('chordTypeId', isEqualTo: chordTypeId)
        .where('chordSubtypeId', isEqualTo: chordSubtypeId)
        .get();
    final documents = getDocuments.docs;
    List<ChordModel> historics = [];

    for (var docs in documents) {
      final item = ChordModel.fromSnapShot(docs);
      historics.add(item);
    }
    historics.sort((a, b) => a.cipher.compareTo(b.cipher));

    return historics;
  }

  Future<List<ChordTypeModel>> getAllChordTypes() async {
    await Future.delayed(const Duration(seconds: 2));

    return [
      ChordTypeModel(
        id: 'acordeNatural',
        title: 'Acordes naturais',
        cipher: '',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'acordeMaior',
            chordTypeId: 'acordeNatural',
            title: 'Maiores',
            cipher: 'M',
          ),
          ChordSubtypeModel(
            id: 'acordeMenor',
            chordTypeId: 'acordeNatural',
            title: 'Menores',
            cipher: 'm',
          ),
        ],
      ),
      ChordTypeModel(
        id: 'acordeSustenido',
        title: 'Acordes sustenidos',
        cipher: '#',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'acordeMaior',
            chordTypeId: 'acordeSustenido',
            title: 'Maiores',
            cipher: '#',
          ),
          ChordSubtypeModel(
            id: 'acordeMenor',
            chordTypeId: 'acordeSustenido',
            title: 'Menores',
            cipher: '#m',
          ),
        ],
      ),
      ChordTypeModel(
        id: 'acordeBemol',
        title: 'Acordes bemóis',
        cipher: 'b',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'acordeMaior',
            chordTypeId: 'acordeBemol',
            title: 'Maiores',
            cipher: 'b',
          ),
          ChordSubtypeModel(
            id: 'acordeMenor',
            chordTypeId: 'acordeBemol',
            title: 'Menores',
            cipher: 'bm',
          ),
        ],
      ),
      ChordTypeModel(
        id: 'acordeComSetima',
        title: 'Acordes com sétima',
        cipher: '7',
        chordSubtype: [
          ChordSubtypeModel(
            id: 'acordeMaior',
            chordTypeId: 'acordeComSetima',
            title: 'Maiores com sétima maior',
            cipher: '7M',
          ),
          ChordSubtypeModel(
            id: 'acordeMaior',
            chordTypeId: 'acordeComSetima',
            title: 'Maiores com sétima menor',
            cipher: '7',
          ),
          ChordSubtypeModel(
            id: 'acordeMenor',
            chordTypeId: 'acordeComSetima',
            title: 'Menores com sétima menor',
            cipher: '7m',
          ),
        ],
      ),
    ];
  }
}
