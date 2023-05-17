// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchesRecord> _$matchesRecordSerializer =
    new _$MatchesRecordSerializer();

class _$MatchesRecordSerializer implements StructuredSerializer<MatchesRecord> {
  @override
  final Iterable<Type> types = const [MatchesRecord, _$MatchesRecord];
  @override
  final String wireName = 'MatchesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MatchesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.matchesId;
    if (value != null) {
      result
        ..add('matches_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scheduledDate;
    if (value != null) {
      result
        ..add('scheduled_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.minPlayed;
    if (value != null) {
      result
        ..add('min_played')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('date_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateUpdated;
    if (value != null) {
      result
        ..add('date_updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.hTeamId;
    if (value != null) {
      result
        ..add('h_team_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.aTeamId;
    if (value != null) {
      result
        ..add('a_team_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.scoreId;
    if (value != null) {
      result
        ..add('score_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  MatchesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'matches_id':
          result.matchesId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'scheduled_date':
          result.scheduledDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'min_played':
          result.minPlayed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date_created':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date_updated':
          result.dateUpdated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'h_team_id':
          result.hTeamId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'a_team_id':
          result.aTeamId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'score_id':
          result.scoreId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$MatchesRecord extends MatchesRecord {
  @override
  final String? matchesId;
  @override
  final DateTime? scheduledDate;
  @override
  final int? minPlayed;
  @override
  final DateTime? dateCreated;
  @override
  final DateTime? dateUpdated;
  @override
  final DocumentReference<Object?>? hTeamId;
  @override
  final DocumentReference<Object?>? aTeamId;
  @override
  final DocumentReference<Object?>? scoreId;
  @override
  final DocumentReference<Object?>? createdById;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MatchesRecord([void Function(MatchesRecordBuilder)? updates]) =>
      (new MatchesRecordBuilder()..update(updates))._build();

  _$MatchesRecord._(
      {this.matchesId,
      this.scheduledDate,
      this.minPlayed,
      this.dateCreated,
      this.dateUpdated,
      this.hTeamId,
      this.aTeamId,
      this.scoreId,
      this.createdById,
      this.ffRef})
      : super._();

  @override
  MatchesRecord rebuild(void Function(MatchesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchesRecordBuilder toBuilder() => new MatchesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchesRecord &&
        matchesId == other.matchesId &&
        scheduledDate == other.scheduledDate &&
        minPlayed == other.minPlayed &&
        dateCreated == other.dateCreated &&
        dateUpdated == other.dateUpdated &&
        hTeamId == other.hTeamId &&
        aTeamId == other.aTeamId &&
        scoreId == other.scoreId &&
        createdById == other.createdById &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, matchesId.hashCode);
    _$hash = $jc(_$hash, scheduledDate.hashCode);
    _$hash = $jc(_$hash, minPlayed.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, dateUpdated.hashCode);
    _$hash = $jc(_$hash, hTeamId.hashCode);
    _$hash = $jc(_$hash, aTeamId.hashCode);
    _$hash = $jc(_$hash, scoreId.hashCode);
    _$hash = $jc(_$hash, createdById.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchesRecord')
          ..add('matchesId', matchesId)
          ..add('scheduledDate', scheduledDate)
          ..add('minPlayed', minPlayed)
          ..add('dateCreated', dateCreated)
          ..add('dateUpdated', dateUpdated)
          ..add('hTeamId', hTeamId)
          ..add('aTeamId', aTeamId)
          ..add('scoreId', scoreId)
          ..add('createdById', createdById)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MatchesRecordBuilder
    implements Builder<MatchesRecord, MatchesRecordBuilder> {
  _$MatchesRecord? _$v;

  String? _matchesId;
  String? get matchesId => _$this._matchesId;
  set matchesId(String? matchesId) => _$this._matchesId = matchesId;

  DateTime? _scheduledDate;
  DateTime? get scheduledDate => _$this._scheduledDate;
  set scheduledDate(DateTime? scheduledDate) =>
      _$this._scheduledDate = scheduledDate;

  int? _minPlayed;
  int? get minPlayed => _$this._minPlayed;
  set minPlayed(int? minPlayed) => _$this._minPlayed = minPlayed;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  DateTime? _dateUpdated;
  DateTime? get dateUpdated => _$this._dateUpdated;
  set dateUpdated(DateTime? dateUpdated) => _$this._dateUpdated = dateUpdated;

  DocumentReference<Object?>? _hTeamId;
  DocumentReference<Object?>? get hTeamId => _$this._hTeamId;
  set hTeamId(DocumentReference<Object?>? hTeamId) => _$this._hTeamId = hTeamId;

  DocumentReference<Object?>? _aTeamId;
  DocumentReference<Object?>? get aTeamId => _$this._aTeamId;
  set aTeamId(DocumentReference<Object?>? aTeamId) => _$this._aTeamId = aTeamId;

  DocumentReference<Object?>? _scoreId;
  DocumentReference<Object?>? get scoreId => _$this._scoreId;
  set scoreId(DocumentReference<Object?>? scoreId) => _$this._scoreId = scoreId;

  DocumentReference<Object?>? _createdById;
  DocumentReference<Object?>? get createdById => _$this._createdById;
  set createdById(DocumentReference<Object?>? createdById) =>
      _$this._createdById = createdById;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MatchesRecordBuilder() {
    MatchesRecord._initializeBuilder(this);
  }

  MatchesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matchesId = $v.matchesId;
      _scheduledDate = $v.scheduledDate;
      _minPlayed = $v.minPlayed;
      _dateCreated = $v.dateCreated;
      _dateUpdated = $v.dateUpdated;
      _hTeamId = $v.hTeamId;
      _aTeamId = $v.aTeamId;
      _scoreId = $v.scoreId;
      _createdById = $v.createdById;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchesRecord;
  }

  @override
  void update(void Function(MatchesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchesRecord build() => _build();

  _$MatchesRecord _build() {
    final _$result = _$v ??
        new _$MatchesRecord._(
            matchesId: matchesId,
            scheduledDate: scheduledDate,
            minPlayed: minPlayed,
            dateCreated: dateCreated,
            dateUpdated: dateUpdated,
            hTeamId: hTeamId,
            aTeamId: aTeamId,
            scoreId: scoreId,
            createdById: createdById,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
