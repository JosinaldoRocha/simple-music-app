import 'package:cloud_firestore/cloud_firestore.dart';

class ChordModel {
  String id;
  String variation;
  String chordTypeId;
  String chordSubtypeId;
  String? name;
  String fullName;
  String cipher;
  String image;

  ChordModel({
    required this.id,
    required this.variation,
    required this.chordTypeId,
    required this.chordSubtypeId,
    this.name,
    required this.fullName,
    required this.cipher,
    required this.image,
  });

  factory ChordModel.fromSnapShot(
      QueryDocumentSnapshot<Map<String, dynamic>> data) {
    return ChordModel(
      id: (data.data()["id"] ?? '') as String,
      variation: (data.data()["variation"] ?? '') as String,
      chordTypeId: (data.data()["chordTypeId"] ?? '') as String,
      chordSubtypeId: (data.data()["chordSubtypeId"] ?? 0) as String,
      name: (data.data()["name"] ?? '') as String,
      fullName: (data.data()["fullName"] ?? '') as String,
      cipher: (data.data()["cipher"] ?? '') as String,
      image: (data.data()["image"] ?? '') as String,
    );
  }
}
