// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssuesRecord> _$issuesRecordSerializer =
    new _$IssuesRecordSerializer();

class _$IssuesRecordSerializer implements StructuredSerializer<IssuesRecord> {
  @override
  final Iterable<Type> types = const [IssuesRecord, _$IssuesRecord];
  @override
  final String wireName = 'IssuesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, IssuesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refCatalog;
    if (value != null) {
      result
        ..add('refCatalog')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.ballotID;
    if (value != null) {
      result
        ..add('BallotID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modifiedDate;
    if (value != null) {
      result
        ..add('modifiedDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  IssuesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssuesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refCatalog':
          result.refCatalog = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'BallotID':
          result.ballotID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'modifiedDate':
          result.modifiedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$IssuesRecord extends IssuesRecord {
  @override
  final String title;
  @override
  final String summary;
  @override
  final String state;
  @override
  final DocumentReference<Object> refCatalog;
  @override
  final String ballotID;
  @override
  final DateTime modifiedDate;
  @override
  final DateTime endDate;
  @override
  final DocumentReference<Object> reference;

  factory _$IssuesRecord([void Function(IssuesRecordBuilder) updates]) =>
      (new IssuesRecordBuilder()..update(updates)).build();

  _$IssuesRecord._(
      {this.title,
      this.summary,
      this.state,
      this.refCatalog,
      this.ballotID,
      this.modifiedDate,
      this.endDate,
      this.reference})
      : super._();

  @override
  IssuesRecord rebuild(void Function(IssuesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuesRecordBuilder toBuilder() => new IssuesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuesRecord &&
        title == other.title &&
        summary == other.summary &&
        state == other.state &&
        refCatalog == other.refCatalog &&
        ballotID == other.ballotID &&
        modifiedDate == other.modifiedDate &&
        endDate == other.endDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, title.hashCode), summary.hashCode),
                            state.hashCode),
                        refCatalog.hashCode),
                    ballotID.hashCode),
                modifiedDate.hashCode),
            endDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IssuesRecord')
          ..add('title', title)
          ..add('summary', summary)
          ..add('state', state)
          ..add('refCatalog', refCatalog)
          ..add('ballotID', ballotID)
          ..add('modifiedDate', modifiedDate)
          ..add('endDate', endDate)
          ..add('reference', reference))
        .toString();
  }
}

class IssuesRecordBuilder
    implements Builder<IssuesRecord, IssuesRecordBuilder> {
  _$IssuesRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  DocumentReference<Object> _refCatalog;
  DocumentReference<Object> get refCatalog => _$this._refCatalog;
  set refCatalog(DocumentReference<Object> refCatalog) =>
      _$this._refCatalog = refCatalog;

  String _ballotID;
  String get ballotID => _$this._ballotID;
  set ballotID(String ballotID) => _$this._ballotID = ballotID;

  DateTime _modifiedDate;
  DateTime get modifiedDate => _$this._modifiedDate;
  set modifiedDate(DateTime modifiedDate) =>
      _$this._modifiedDate = modifiedDate;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  IssuesRecordBuilder() {
    IssuesRecord._initializeBuilder(this);
  }

  IssuesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _summary = $v.summary;
      _state = $v.state;
      _refCatalog = $v.refCatalog;
      _ballotID = $v.ballotID;
      _modifiedDate = $v.modifiedDate;
      _endDate = $v.endDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IssuesRecord;
  }

  @override
  void update(void Function(IssuesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IssuesRecord build() {
    final _$result = _$v ??
        new _$IssuesRecord._(
            title: title,
            summary: summary,
            state: state,
            refCatalog: refCatalog,
            ballotID: ballotID,
            modifiedDate: modifiedDate,
            endDate: endDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
