// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScoreRecord> _$scoreRecordSerializer = new _$ScoreRecordSerializer();

class _$ScoreRecordSerializer implements StructuredSerializer<ScoreRecord> {
  @override
  final Iterable<Type> types = const [ScoreRecord, _$ScoreRecord];
  @override
  final String wireName = 'ScoreRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScoreRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.scoreId;
    if (value != null) {
      result
        ..add('score_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.matchId;
    if (value != null) {
      result
        ..add('match_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.hTeamScore;
    if (value != null) {
      result
        ..add('h_team_score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aTeamScore;
    if (value != null) {
      result
        ..add('a_team_score')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('date_created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lastUpdated;
    if (value != null) {
      result
        ..add('last_updated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ScoreRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoreRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'score_id':
          result.scoreId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'match_id':
          result.matchId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'h_team_score':
          result.hTeamScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'a_team_score':
          result.aTeamScore = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date_created':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'last_updated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ScoreRecord extends ScoreRecord {
  @override
  final String? scoreId;
  @override
  final DocumentReference<Object?>? matchId;
  @override
  final int? hTeamScore;
  @override
  final int? aTeamScore;
  @override
  final DateTime? dateCreated;
  @override
  final DateTime? lastUpdated;
  @override
  final DocumentReference<Object?>? createdById;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScoreRecord([void Function(ScoreRecordBuilder)? updates]) =>
      (new ScoreRecordBuilder()..update(updates))._build();

  _$ScoreRecord._(
      {this.scoreId,
      this.matchId,
      this.hTeamScore,
      this.aTeamScore,
      this.dateCreated,
      this.lastUpdated,
      this.createdById,
      this.ffRef})
      : super._();

  @override
  ScoreRecord rebuild(void Function(ScoreRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoreRecordBuilder toBuilder() => new ScoreRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScoreRecord &&
        scoreId == other.scoreId &&
        matchId == other.matchId &&
        hTeamScore == other.hTeamScore &&
        aTeamScore == other.aTeamScore &&
        dateCreated == other.dateCreated &&
        lastUpdated == other.lastUpdated &&
        createdById == other.createdById &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, scoreId.hashCode);
    _$hash = $jc(_$hash, matchId.hashCode);
    _$hash = $jc(_$hash, hTeamScore.hashCode);
    _$hash = $jc(_$hash, aTeamScore.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, createdById.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScoreRecord')
          ..add('scoreId', scoreId)
          ..add('matchId', matchId)
          ..add('hTeamScore', hTeamScore)
          ..add('aTeamScore', aTeamScore)
          ..add('dateCreated', dateCreated)
          ..add('lastUpdated', lastUpdated)
          ..add('createdById', createdById)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScoreRecordBuilder implements Builder<ScoreRecord, ScoreRecordBuilder> {
  _$ScoreRecord? _$v;

  String? _scoreId;
  String? get scoreId => _$this._scoreId;
  set scoreId(String? scoreId) => _$this._scoreId = scoreId;

  DocumentReference<Object?>? _matchId;
  DocumentReference<Object?>? get matchId => _$this._matchId;
  set matchId(DocumentReference<Object?>? matchId) => _$this._matchId = matchId;

  int? _hTeamScore;
  int? get hTeamScore => _$this._hTeamScore;
  set hTeamScore(int? hTeamScore) => _$this._hTeamScore = hTeamScore;

  int? _aTeamScore;
  int? get aTeamScore => _$this._aTeamScore;
  set aTeamScore(int? aTeamScore) => _$this._aTeamScore = aTeamScore;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  DocumentReference<Object?>? _createdById;
  DocumentReference<Object?>? get createdById => _$this._createdById;
  set createdById(DocumentReference<Object?>? createdById) =>
      _$this._createdById = createdById;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScoreRecordBuilder() {
    ScoreRecord._initializeBuilder(this);
  }

  ScoreRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scoreId = $v.scoreId;
      _matchId = $v.matchId;
      _hTeamScore = $v.hTeamScore;
      _aTeamScore = $v.aTeamScore;
      _dateCreated = $v.dateCreated;
      _lastUpdated = $v.lastUpdated;
      _createdById = $v.createdById;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScoreRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScoreRecord;
  }

  @override
  void update(void Function(ScoreRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScoreRecord build() => _build();

  _$ScoreRecord _build() {
    final _$result = _$v ??
        new _$ScoreRecord._(
            scoreId: scoreId,
            matchId: matchId,
            hTeamScore: hTeamScore,
            aTeamScore: aTeamScore,
            dateCreated: dateCreated,
            lastUpdated: lastUpdated,
            createdById: createdById,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
