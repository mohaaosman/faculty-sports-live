// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teams_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamsRecord> _$teamsRecordSerializer = new _$TeamsRecordSerializer();

class _$TeamsRecordSerializer implements StructuredSerializer<TeamsRecord> {
  @override
  final Iterable<Type> types = const [TeamsRecord, _$TeamsRecord];
  @override
  final String wireName = 'TeamsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.teamName;
    if (value != null) {
      result
        ..add('team_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.facultyName;
    if (value != null) {
      result
        ..add('faculty_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('date_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coachId;
    if (value != null) {
      result
        ..add('coach_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imagePath;
    if (value != null) {
      result
        ..add('image_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdById;
    if (value != null) {
      result
        ..add('created_by_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  TeamsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'team_name':
          result.teamName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'faculty_name':
          result.facultyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'date_created':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'coach_id':
          result.coachId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'image_path':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by_id':
          result.createdById = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$TeamsRecord extends TeamsRecord {
  @override
  final String? teamName;
  @override
  final String? facultyName;
  @override
  final bool? isActive;
  @override
  final DateTime? dateCreated;
  @override
  final DocumentReference<Object?>? coachId;
  @override
  final String? imagePath;
  @override
  final DocumentReference<Object?>? createdById;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TeamsRecord([void Function(TeamsRecordBuilder)? updates]) =>
      (new TeamsRecordBuilder()..update(updates))._build();

  _$TeamsRecord._(
      {this.teamName,
      this.facultyName,
      this.isActive,
      this.dateCreated,
      this.coachId,
      this.imagePath,
      this.createdById,
      this.ffRef})
      : super._();

  @override
  TeamsRecord rebuild(void Function(TeamsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamsRecordBuilder toBuilder() => new TeamsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamsRecord &&
        teamName == other.teamName &&
        facultyName == other.facultyName &&
        isActive == other.isActive &&
        dateCreated == other.dateCreated &&
        coachId == other.coachId &&
        imagePath == other.imagePath &&
        createdById == other.createdById &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, teamName.hashCode);
    _$hash = $jc(_$hash, facultyName.hashCode);
    _$hash = $jc(_$hash, isActive.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, coachId.hashCode);
    _$hash = $jc(_$hash, imagePath.hashCode);
    _$hash = $jc(_$hash, createdById.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamsRecord')
          ..add('teamName', teamName)
          ..add('facultyName', facultyName)
          ..add('isActive', isActive)
          ..add('dateCreated', dateCreated)
          ..add('coachId', coachId)
          ..add('imagePath', imagePath)
          ..add('createdById', createdById)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TeamsRecordBuilder implements Builder<TeamsRecord, TeamsRecordBuilder> {
  _$TeamsRecord? _$v;

  String? _teamName;
  String? get teamName => _$this._teamName;
  set teamName(String? teamName) => _$this._teamName = teamName;

  String? _facultyName;
  String? get facultyName => _$this._facultyName;
  set facultyName(String? facultyName) => _$this._facultyName = facultyName;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  DocumentReference<Object?>? _coachId;
  DocumentReference<Object?>? get coachId => _$this._coachId;
  set coachId(DocumentReference<Object?>? coachId) => _$this._coachId = coachId;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  DocumentReference<Object?>? _createdById;
  DocumentReference<Object?>? get createdById => _$this._createdById;
  set createdById(DocumentReference<Object?>? createdById) =>
      _$this._createdById = createdById;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TeamsRecordBuilder() {
    TeamsRecord._initializeBuilder(this);
  }

  TeamsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamName = $v.teamName;
      _facultyName = $v.facultyName;
      _isActive = $v.isActive;
      _dateCreated = $v.dateCreated;
      _coachId = $v.coachId;
      _imagePath = $v.imagePath;
      _createdById = $v.createdById;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamsRecord;
  }

  @override
  void update(void Function(TeamsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamsRecord build() => _build();

  _$TeamsRecord _build() {
    final _$result = _$v ??
        new _$TeamsRecord._(
            teamName: teamName,
            facultyName: facultyName,
            isActive: isActive,
            dateCreated: dateCreated,
            coachId: coachId,
            imagePath: imagePath,
            createdById: createdById,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
