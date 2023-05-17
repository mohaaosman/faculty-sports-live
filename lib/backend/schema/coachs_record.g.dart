// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coachs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoachsRecord> _$coachsRecordSerializer =
    new _$CoachsRecordSerializer();

class _$CoachsRecordSerializer implements StructuredSerializer<CoachsRecord> {
  @override
  final Iterable<Type> types = const [CoachsRecord, _$CoachsRecord];
  @override
  final String wireName = 'CoachsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoachsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.coachName;
    if (value != null) {
      result
        ..add('coach_name')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('date_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coachId;
    if (value != null) {
      result
        ..add('coach_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CoachsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoachsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'coach_name':
          result.coachName = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date_created':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coach_id':
          result.coachId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CoachsRecord extends CoachsRecord {
  @override
  final int? coachName;
  @override
  final DateTime? dateCreated;
  @override
  final bool? isActive;
  @override
  final String? coachId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CoachsRecord([void Function(CoachsRecordBuilder)? updates]) =>
      (new CoachsRecordBuilder()..update(updates))._build();

  _$CoachsRecord._(
      {this.coachName,
      this.dateCreated,
      this.isActive,
      this.coachId,
      this.ffRef})
      : super._();

  @override
  CoachsRecord rebuild(void Function(CoachsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoachsRecordBuilder toBuilder() => new CoachsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoachsRecord &&
        coachName == other.coachName &&
        dateCreated == other.dateCreated &&
        isActive == other.isActive &&
        coachId == other.coachId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coachName.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, coachId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoachsRecord')
          ..add('coachName', coachName)
          ..add('dateCreated', dateCreated)
          ..add('isActive', isActive)
          ..add('coachId', coachId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CoachsRecordBuilder
    implements Builder<CoachsRecord, CoachsRecordBuilder> {
  _$CoachsRecord? _$v;

  int? _coachName;
  int? get coachName => _$this._coachName;
  set coachName(int? coachName) => _$this._coachName = coachName;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _coachId;
  String? get coachId => _$this._coachId;
  set coachId(String? coachId) => _$this._coachId = coachId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CoachsRecordBuilder() {
    CoachsRecord._initializeBuilder(this);
  }

  CoachsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coachName = $v.coachName;
      _dateCreated = $v.dateCreated;
      _isActive = $v.isActive;
      _coachId = $v.coachId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoachsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoachsRecord;
  }

  @override
  void update(void Function(CoachsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoachsRecord build() => _build();

  _$CoachsRecord _build() {
    final _$result = _$v ??
        new _$CoachsRecord._(
            coachName: coachName,
            dateCreated: dateCreated,
            isActive: isActive,
            coachId: coachId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
