import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'issues_record.g.dart';

abstract class IssuesRecord
    implements Built<IssuesRecord, IssuesRecordBuilder> {
  static Serializer<IssuesRecord> get serializer => _$issuesRecordSerializer;

  String? get title;

  String? get summary;

  String? get state;

  DocumentReference? get refCatalog;

  @BuiltValueField(wireName: 'BallotID')
  String? get ballotID;

  DateTime? get modifiedDate;

  DateTime? get endDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ref;
  DocumentReference get reference => ref!;

  static void _initializeBuilder(IssuesRecordBuilder builder) => builder
    ..title = ''
    ..summary = ''
    ..state = ''
    ..ballotID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('issues');

  static Stream<IssuesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IssuesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IssuesRecord._();
  factory IssuesRecord([void Function(IssuesRecordBuilder) updates]) =
      _$IssuesRecord;

  static IssuesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIssuesRecordData({
  String? title,
  String? summary,
  String? state,
  DocumentReference? refCatalog,
  String? ballotID,
  DateTime? modifiedDate,
  DateTime? endDate,
}) =>
    serializers.toFirestore(
        IssuesRecord.serializer,
        IssuesRecord((i) => i
          ..title = title
          ..summary = summary
          ..state = state
          ..refCatalog = refCatalog
          ..ballotID = ballotID
          ..modifiedDate = modifiedDate
          ..endDate = endDate));
