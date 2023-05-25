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
    historics.sort((a, b) => a.name.compareTo(b.name));

    return historics;
  }

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
            chordTypeId: 'a',
            title: 'Maiores',
            cipher: 'M',
          ),
          ChordSubtypeModel(
            id: 'am',
            chordTypeId: 'a',
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
            chordTypeId: 'a#',
            title: 'Maiores',
            cipher: '#',
          ),
          ChordSubtypeModel(
            id: 'a#m',
            chordTypeId: 'a#',
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
            chordTypeId: 'ab',
            title: 'Maiores',
            cipher: 'b',
          ),
          ChordSubtypeModel(
            id: 'abm',
            chordTypeId: 'ab',
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
            chordTypeId: 'a7',
            title: 'Maiores com sétima maior',
            cipher: '7M',
          ),
          ChordSubtypeModel(
            id: 'aM7m',
            chordTypeId: 'a7',
            title: 'Maiores com sétima menor',
            cipher: '7',
          ),
          ChordSubtypeModel(
            id: 'am7m',
            chordTypeId: 'a7',
            title: 'Menores com sétima menor',
            cipher: '7m',
          ),
        ],
      ),
    ];
  }
}
