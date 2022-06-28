import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'catalog_record.g.dart';

abstract class CatalogRecord
    implements Built<CatalogRecord, CatalogRecordBuilder> {
  static Serializer<CatalogRecord> get serializer => _$catalogRecordSerializer;

  String? get title;

  String? get summary;

  DateTime? get endDate;

  String? get logoUrl;

  bool? get active;

  DateTime? get modifiedDate;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ref;
  DocumentReference get reference => ref!;

  static void _initializeBuilder(CatalogRecordBuilder builder) => builder
    ..title = ''
    ..summary = ''
    ..logoUrl = ''
    ..active = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('catalog');

  static Stream<CatalogRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CatalogRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CatalogRecord._();
  factory CatalogRecord([void Function(CatalogRecordBuilder) updates]) =
      _$CatalogRecord;

  static CatalogRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCatalogRecordData({
  String? title,
  String? summary,
  DateTime? endDate,
  String? logoUrl,
  bool? active,
  DateTime? modifiedDate,
}) =>
    serializers.toFirestore(
        CatalogRecord.serializer,
        CatalogRecord((c) => c
          ..title = title
          ..summary = summary
          ..endDate = endDate
          ..logoUrl = logoUrl
          ..active = active
          ..modifiedDate = modifiedDate));
