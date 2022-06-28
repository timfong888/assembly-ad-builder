// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizzes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuizzesRecord> _$quizzesRecordSerializer =
    new _$QuizzesRecordSerializer();

class _$QuizzesRecordSerializer implements StructuredSerializer<QuizzesRecord> {
  @override
  final Iterable<Type> types = const [QuizzesRecord, _$QuizzesRecord];
  @override
  final String wireName = 'QuizzesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, QuizzesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.q1Answers;
    if (value != null) {
      result
        ..add('q1Answers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.q2Answers;
    if (value != null) {
      result
        ..add('q2Answers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.q1Correct;
    if (value != null) {
      result
        ..add('q1Correct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q2Correct;
    if (value != null) {
      result
        ..add('q2Correct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.question1;
    if (value != null) {
      result
        ..add('question1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.question2;
    if (value != null) {
      result
        ..add('question2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.q1correctAnswerIndex;
    if (value != null) {
      result
        ..add('q1correctAnswerIndex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.q2correctAnswerIndex;
    if (value != null) {
      result
        ..add('q2correctAnswerIndex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  QuizzesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuizzesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'q1Answers':
          result.q1Answers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'q2Answers':
          result.q2Answers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'q1Correct':
          result.q1Correct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'q2Correct':
          result.q2Correct = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'question1':
          result.question1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'question2':
          result.question2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'q1correctAnswerIndex':
          result.q1correctAnswerIndex = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'q2correctAnswerIndex':
          result.q2correctAnswerIndex = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$QuizzesRecord extends QuizzesRecord {
  @override
  final BuiltList<String> q1Answers;
  @override
  final BuiltList<String> q2Answers;
  @override
  final String q1Correct;
  @override
  final String q2Correct;
  @override
  final String question1;
  @override
  final String question2;
  @override
  final double q1correctAnswerIndex;
  @override
  final double q2correctAnswerIndex;
  @override
  final DocumentReference<Object> reference;

  factory _$QuizzesRecord([void Function(QuizzesRecordBuilder) updates]) =>
      (new QuizzesRecordBuilder()..update(updates)).build();

  _$QuizzesRecord._(
      {this.q1Answers,
      this.q2Answers,
      this.q1Correct,
      this.q2Correct,
      this.question1,
      this.question2,
      this.q1correctAnswerIndex,
      this.q2correctAnswerIndex,
      this.reference})
      : super._();

  @override
  QuizzesRecord rebuild(void Function(QuizzesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizzesRecordBuilder toBuilder() => new QuizzesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizzesRecord &&
        q1Answers == other.q1Answers &&
        q2Answers == other.q2Answers &&
        q1Correct == other.q1Correct &&
        q2Correct == other.q2Correct &&
        question1 == other.question1 &&
        question2 == other.question2 &&
        q1correctAnswerIndex == other.q1correctAnswerIndex &&
        q2correctAnswerIndex == other.q2correctAnswerIndex &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, q1Answers.hashCode),
                                    q2Answers.hashCode),
                                q1Correct.hashCode),
                            q2Correct.hashCode),
                        question1.hashCode),
                    question2.hashCode),
                q1correctAnswerIndex.hashCode),
            q2correctAnswerIndex.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('QuizzesRecord')
          ..add('q1Answers', q1Answers)
          ..add('q2Answers', q2Answers)
          ..add('q1Correct', q1Correct)
          ..add('q2Correct', q2Correct)
          ..add('question1', question1)
          ..add('question2', question2)
          ..add('q1correctAnswerIndex', q1correctAnswerIndex)
          ..add('q2correctAnswerIndex', q2correctAnswerIndex)
          ..add('reference', reference))
        .toString();
  }
}

class QuizzesRecordBuilder
    implements Builder<QuizzesRecord, QuizzesRecordBuilder> {
  _$QuizzesRecord _$v;

  ListBuilder<String> _q1Answers;
  ListBuilder<String> get q1Answers =>
      _$this._q1Answers ??= new ListBuilder<String>();
  set q1Answers(ListBuilder<String> q1Answers) => _$this._q1Answers = q1Answers;

  ListBuilder<String> _q2Answers;
  ListBuilder<String> get q2Answers =>
      _$this._q2Answers ??= new ListBuilder<String>();
  set q2Answers(ListBuilder<String> q2Answers) => _$this._q2Answers = q2Answers;

  String _q1Correct;
  String get q1Correct => _$this._q1Correct;
  set q1Correct(String q1Correct) => _$this._q1Correct = q1Correct;

  String _q2Correct;
  String get q2Correct => _$this._q2Correct;
  set q2Correct(String q2Correct) => _$this._q2Correct = q2Correct;

  String _question1;
  String get question1 => _$this._question1;
  set question1(String question1) => _$this._question1 = question1;

  String _question2;
  String get question2 => _$this._question2;
  set question2(String question2) => _$this._question2 = question2;

  double _q1correctAnswerIndex;
  double get q1correctAnswerIndex => _$this._q1correctAnswerIndex;
  set q1correctAnswerIndex(double q1correctAnswerIndex) =>
      _$this._q1correctAnswerIndex = q1correctAnswerIndex;

  double _q2correctAnswerIndex;
  double get q2correctAnswerIndex => _$this._q2correctAnswerIndex;
  set q2correctAnswerIndex(double q2correctAnswerIndex) =>
      _$this._q2correctAnswerIndex = q2correctAnswerIndex;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  QuizzesRecordBuilder() {
    QuizzesRecord._initializeBuilder(this);
  }

  QuizzesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _q1Answers = $v.q1Answers?.toBuilder();
      _q2Answers = $v.q2Answers?.toBuilder();
      _q1Correct = $v.q1Correct;
      _q2Correct = $v.q2Correct;
      _question1 = $v.question1;
      _question2 = $v.question2;
      _q1correctAnswerIndex = $v.q1correctAnswerIndex;
      _q2correctAnswerIndex = $v.q2correctAnswerIndex;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizzesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuizzesRecord;
  }

  @override
  void update(void Function(QuizzesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$QuizzesRecord build() {
    _$QuizzesRecord _$result;
    try {
      _$result = _$v ??
          new _$QuizzesRecord._(
              q1Answers: _q1Answers?.build(),
              q2Answers: _q2Answers?.build(),
              q1Correct: q1Correct,
              q2Correct: q2Correct,
              question1: question1,
              question2: question2,
              q1correctAnswerIndex: q1correctAnswerIndex,
              q2correctAnswerIndex: q2correctAnswerIndex,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'q1Answers';
        _q1Answers?.build();
        _$failedField = 'q2Answers';
        _q2Answers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'QuizzesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
