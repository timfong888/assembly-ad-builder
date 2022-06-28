import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ads_record.g.dart';

abstract class AdsRecord implements Built<AdsRecord, AdsRecordBuilder> {
  static Serializer<AdsRecord> get serializer => _$adsRecordSerializer;

  String? get headline;

  String? get summary;

  DocumentReference? get issueID;

  int? get learnTokens;

  String? get argument;

  DocumentReference? get refQuiz;

  String? get adRecordID;

  bool? get boolActive;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ref;
  DocumentReference get reference => ref!;

  static void _initializeBuilder(AdsRecordBuilder builder) => builder
    ..headline = ''
    ..summary = ''
    ..learnTokens = 0
    ..argument = ''
    ..adRecordID = ''
    ..boolActive = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ads');

  static Stream<AdsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AdsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AdsRecord._();
  factory AdsRecord([void Function(AdsRecordBuilder) updates]) = _$AdsRecord;

  static AdsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAdsRecordData({
  String? headline,
  String? summary,
  DocumentReference? issueID,
  int? learnTokens,
  String? argument,
  DocumentReference? refQuiz,
  String? adRecordID,
  bool? boolActive,
}) =>
    serializers.toFirestore(
        AdsRecord.serializer,
        AdsRecord((a) => a
          ..headline = headline
          ..summary = summary
          ..issueID = issueID
          ..learnTokens = learnTokens
          ..argument = argument
          ..refQuiz = refQuiz
          ..adRecordID = adRecordID
          ..boolActive = boolActive));
