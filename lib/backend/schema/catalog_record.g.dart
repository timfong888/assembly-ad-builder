// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CatalogRecord> _$catalogRecordSerializer =
    new _$CatalogRecordSerializer();

class _$CatalogRecordSerializer implements StructuredSerializer<CatalogRecord> {
  @override
  final Iterable<Type> types = const [CatalogRecord, _$CatalogRecord];
  @override
  final String wireName = 'CatalogRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CatalogRecord object,
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
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.logoUrl;
    if (value != null) {
      result
        ..add('logoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.modifiedDate;
    if (value != null) {
      result
        ..add('modifiedDate')
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
  CatalogRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CatalogRecordBuilder();

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
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'logoUrl':
          result.logoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'modifiedDate':
          result.modifiedDate = serializers.deserialize(value,
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

class _$CatalogRecord extends CatalogRecord {
  @override
  final String title;
  @override
  final String summary;
  @override
  final DateTime endDate;
  @override
  final String logoUrl;
  @override
  final bool active;
  @override
  final DateTime modifiedDate;
  @override
  final DocumentReference<Object> reference;

  factory _$CatalogRecord([void Function(CatalogRecordBuilder) updates]) =>
      (new CatalogRecordBuilder()..update(updates)).build();

  _$CatalogRecord._(
      {this.title,
      this.summary,
      this.endDate,
      this.logoUrl,
      this.active,
      this.modifiedDate,
      this.reference})
      : super._();

  @override
  CatalogRecord rebuild(void Function(CatalogRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CatalogRecordBuilder toBuilder() => new CatalogRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CatalogRecord &&
        title == other.title &&
        summary == other.summary &&
        endDate == other.endDate &&
        logoUrl == other.logoUrl &&
        active == other.active &&
        modifiedDate == other.modifiedDate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), summary.hashCode),
                        endDate.hashCode),
                    logoUrl.hashCode),
                active.hashCode),
            modifiedDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CatalogRecord')
          ..add('title', title)
          ..add('summary', summary)
          ..add('endDate', endDate)
          ..add('logoUrl', logoUrl)
          ..add('active', active)
          ..add('modifiedDate', modifiedDate)
          ..add('reference', reference))
        .toString();
  }
}

class CatalogRecordBuilder
    implements Builder<CatalogRecord, CatalogRecordBuilder> {
  _$CatalogRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  String _logoUrl;
  String get logoUrl => _$this._logoUrl;
  set logoUrl(String logoUrl) => _$this._logoUrl = logoUrl;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  DateTime _modifiedDate;
  DateTime get modifiedDate => _$this._modifiedDate;
  set modifiedDate(DateTime modifiedDate) =>
      _$this._modifiedDate = modifiedDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CatalogRecordBuilder() {
    CatalogRecord._initializeBuilder(this);
  }

  CatalogRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _summary = $v.summary;
      _endDate = $v.endDate;
      _logoUrl = $v.logoUrl;
      _active = $v.active;
      _modifiedDate = $v.modifiedDate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CatalogRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CatalogRecord;
  }

  @override
  void update(void Function(CatalogRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CatalogRecord build() {
    final _$result = _$v ??
        new _$CatalogRecord._(
            title: title,
            summary: summary,
            endDate: endDate,
            logoUrl: logoUrl,
            active: active,
            modifiedDate: modifiedDate,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
