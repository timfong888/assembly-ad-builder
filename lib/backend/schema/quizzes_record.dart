import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'quizzes_record.g.dart';

abstract class QuizzesRecord
    implements Built<QuizzesRecord, QuizzesRecordBuilder> {
  static Serializer<QuizzesRecord> get serializer => _$quizzesRecordSerializer;

  BuiltList<String>? get q1Answers;

  BuiltList<String>? get q2Answers;

  String? get q1Correct;

  String? get q2Correct;

  String? get question1;

  String? get question2;

  double? get q1correctAnswerIndex;

  double? get q2correctAnswerIndex;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ref;
  DocumentReference get reference => ref!;

  static void _initializeBuilder(QuizzesRecordBuilder builder) => builder
    ..q1Answers = ListBuilder()
    ..q2Answers = ListBuilder()
    ..q1Correct = ''
    ..q2Correct = ''
    ..question1 = ''
    ..question2 = ''
    ..q1correctAnswerIndex = 0.0
    ..q2correctAnswerIndex = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quizzes');

  static Stream<QuizzesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QuizzesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QuizzesRecord._();
  factory QuizzesRecord([void Function(QuizzesRecordBuilder) updates]) =
      _$QuizzesRecord;

  static QuizzesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQuizzesRecordData({
  String? q1Correct,
  String? q2Correct,
  String? question1,
  String? question2,
  double? q1correctAnswerIndex,
  double? q2correctAnswerIndex,
}) =>
    serializers.toFirestore(
        QuizzesRecord.serializer,
        QuizzesRecord((q) => q
          ..q1Answers = null
          ..q2Answers = null
          ..q1Correct = q1Correct
          ..q2Correct = q2Correct
          ..question1 = question1
          ..question2 = question2
          ..q1correctAnswerIndex = q1correctAnswerIndex
          ..q2correctAnswerIndex = q2correctAnswerIndex));
