// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdsRecord> _$adsRecordSerializer = new _$AdsRecordSerializer();

class _$AdsRecordSerializer implements StructuredSerializer<AdsRecord> {
  @override
  final Iterable<Type> types = const [AdsRecord, _$AdsRecord];
  @override
  final String wireName = 'AdsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, AdsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.headline;
    if (value != null) {
      result
        ..add('headline')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issueID;
    if (value != null) {
      result
        ..add('issueID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.learnTokens;
    if (value != null) {
      result
        ..add('learnTokens')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.argument;
    if (value != null) {
      result
        ..add('argument')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refQuiz;
    if (value != null) {
      result
        ..add('refQuiz')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.adRecordID;
    if (value != null) {
      result
        ..add('adRecordID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boolActive;
    if (value != null) {
      result
        ..add('boolActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AdsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'headline':
          result.headline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issueID':
          result.issueID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'learnTokens':
          result.learnTokens = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'argument':
          result.argument = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refQuiz':
          result.refQuiz = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'adRecordID':
          result.adRecordID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'boolActive':
          result.boolActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$AdsRecord extends AdsRecord {
  @override
  final String headline;
  @override
  final String summary;
  @override
  final DocumentReference<Object> issueID;
  @override
  final int learnTokens;
  @override
  final String argument;
  @override
  final DocumentReference<Object> refQuiz;
  @override
  final String adRecordID;
  @override
  final bool boolActive;
  @override
  final DocumentReference<Object> reference;

  factory _$AdsRecord([void Function(AdsRecordBuilder) updates]) =>
      (new AdsRecordBuilder()..update(updates)).build();

  _$AdsRecord._(
      {this.headline,
      this.summary,
      this.issueID,
      this.learnTokens,
      this.argument,
      this.refQuiz,
      this.adRecordID,
      this.boolActive,
      this.reference})
      : super._();

  @override
  AdsRecord rebuild(void Function(AdsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdsRecordBuilder toBuilder() => new AdsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdsRecord &&
        headline == other.headline &&
        summary == other.summary &&
        issueID == other.issueID &&
        learnTokens == other.learnTokens &&
        argument == other.argument &&
        refQuiz == other.refQuiz &&
        adRecordID == other.adRecordID &&
        boolActive == other.boolActive &&
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
                                $jc($jc(0, headline.hashCode),
                                    summary.hashCode),
                                issueID.hashCode),
                            learnTokens.hashCode),
                        argument.hashCode),
                    refQuiz.hashCode),
                adRecordID.hashCode),
            boolActive.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdsRecord')
          ..add('headline', headline)
          ..add('summary', summary)
          ..add('issueID', issueID)
          ..add('learnTokens', learnTokens)
          ..add('argument', argument)
          ..add('refQuiz', refQuiz)
          ..add('adRecordID', adRecordID)
          ..add('boolActive', boolActive)
          ..add('reference', reference))
        .toString();
  }
}

class AdsRecordBuilder implements Builder<AdsRecord, AdsRecordBuilder> {
  _$AdsRecord _$v;

  String _headline;
  String get headline => _$this._headline;
  set headline(String headline) => _$this._headline = headline;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  DocumentReference<Object> _issueID;
  DocumentReference<Object> get issueID => _$this._issueID;
  set issueID(DocumentReference<Object> issueID) => _$this._issueID = issueID;

  int _learnTokens;
  int get learnTokens => _$this._learnTokens;
  set learnTokens(int learnTokens) => _$this._learnTokens = learnTokens;

  String _argument;
  String get argument => _$this._argument;
  set argument(String argument) => _$this._argument = argument;

  DocumentReference<Object> _refQuiz;
  DocumentReference<Object> get refQuiz => _$this._refQuiz;
  set refQuiz(DocumentReference<Object> refQuiz) => _$this._refQuiz = refQuiz;

  String _adRecordID;
  String get adRecordID => _$this._adRecordID;
  set adRecordID(String adRecordID) => _$this._adRecordID = adRecordID;

  bool _boolActive;
  bool get boolActive => _$this._boolActive;
  set boolActive(bool boolActive) => _$this._boolActive = boolActive;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AdsRecordBuilder() {
    AdsRecord._initializeBuilder(this);
  }

  AdsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headline = $v.headline;
      _summary = $v.summary;
      _issueID = $v.issueID;
      _learnTokens = $v.learnTokens;
      _argument = $v.argument;
      _refQuiz = $v.refQuiz;
      _adRecordID = $v.adRecordID;
      _boolActive = $v.boolActive;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdsRecord;
  }

  @override
  void update(void Function(AdsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdsRecord build() {
    final _$result = _$v ??
        new _$AdsRecord._(
            headline: headline,
            summary: summary,
            issueID: issueID,
            learnTokens: learnTokens,
            argument: argument,
            refQuiz: refQuiz,
            adRecordID: adRecordID,
            boolActive: boolActive,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
