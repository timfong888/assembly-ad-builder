import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ads_record.g.dart';

abstract class AdsRecord implements Built<AdsRecord, AdsRecordBuilder> {
  static Serializer<AdsRecord> get serializer => _$adsRecordSerializer;

  @nullable
  String get headline;

  @nullable
  String get summary;

  @nullable
  DocumentReference get issueID;

  @nullable
  int get learnTokens;

  @nullable
  String get argument;

  @nullable
  DocumentReference get refQuiz;

  @nullable
  String get adRecordID;

  @nullable
  bool get boolActive;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

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
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AdsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AdsRecord._();
  factory AdsRecord([void Function(AdsRecordBuilder) updates]) = _$AdsRecord;

  static AdsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAdsRecordData({
  String headline,
  String summary,
  DocumentReference issueID,
  int learnTokens,
  String argument,
  DocumentReference refQuiz,
  String adRecordID,
  bool boolActive,
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
