import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'score_record.g.dart';

abstract class ScoreRecord implements Built<ScoreRecord, ScoreRecordBuilder> {
  static Serializer<ScoreRecord> get serializer => _$scoreRecordSerializer;

  @BuiltValueField(wireName: 'score_id')
  String? get scoreId;

  @BuiltValueField(wireName: 'match_id')
  DocumentReference? get matchId;

  @BuiltValueField(wireName: 'h_team_score')
  int? get hTeamScore;

  @BuiltValueField(wireName: 'a_team_score')
  int? get aTeamScore;

  @BuiltValueField(wireName: 'date_created')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'last_updated')
  DateTime? get lastUpdated;

  @BuiltValueField(wireName: 'created_by_id')
  DocumentReference? get createdById;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScoreRecordBuilder builder) => builder
    ..scoreId = ''
    ..hTeamScore = 0
    ..aTeamScore = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('score');

  static Stream<ScoreRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScoreRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScoreRecord._();
  factory ScoreRecord([void Function(ScoreRecordBuilder) updates]) =
      _$ScoreRecord;

  static ScoreRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScoreRecordData({
  String? scoreId,
  DocumentReference? matchId,
  int? hTeamScore,
  int? aTeamScore,
  DateTime? dateCreated,
  DateTime? lastUpdated,
  DocumentReference? createdById,
}) {
  final firestoreData = serializers.toFirestore(
    ScoreRecord.serializer,
    ScoreRecord(
      (s) => s
        ..scoreId = scoreId
        ..matchId = matchId
        ..hTeamScore = hTeamScore
        ..aTeamScore = aTeamScore
        ..dateCreated = dateCreated
        ..lastUpdated = lastUpdated
        ..createdById = createdById,
    ),
  );

  return firestoreData;
}
