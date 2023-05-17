import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'matches_record.g.dart';

abstract class MatchesRecord
    implements Built<MatchesRecord, MatchesRecordBuilder> {
  static Serializer<MatchesRecord> get serializer => _$matchesRecordSerializer;

  @BuiltValueField(wireName: 'matches_id')
  String? get matchesId;

  @BuiltValueField(wireName: 'scheduled_date')
  DateTime? get scheduledDate;

  @BuiltValueField(wireName: 'min_played')
  int? get minPlayed;

  @BuiltValueField(wireName: 'date_created')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'date_updated')
  DateTime? get dateUpdated;

  @BuiltValueField(wireName: 'h_team_id')
  DocumentReference? get hTeamId;

  @BuiltValueField(wireName: 'a_team_id')
  DocumentReference? get aTeamId;

  @BuiltValueField(wireName: 'score_id')
  DocumentReference? get scoreId;

  @BuiltValueField(wireName: 'created_by_id')
  DocumentReference? get createdById;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MatchesRecordBuilder builder) => builder
    ..matchesId = ''
    ..minPlayed = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('matches');

  static Stream<MatchesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MatchesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MatchesRecord._();
  factory MatchesRecord([void Function(MatchesRecordBuilder) updates]) =
      _$MatchesRecord;

  static MatchesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMatchesRecordData({
  String? matchesId,
  DateTime? scheduledDate,
  int? minPlayed,
  DateTime? dateCreated,
  DateTime? dateUpdated,
  DocumentReference? hTeamId,
  DocumentReference? aTeamId,
  DocumentReference? scoreId,
  DocumentReference? createdById,
}) {
  final firestoreData = serializers.toFirestore(
    MatchesRecord.serializer,
    MatchesRecord(
      (m) => m
        ..matchesId = matchesId
        ..scheduledDate = scheduledDate
        ..minPlayed = minPlayed
        ..dateCreated = dateCreated
        ..dateUpdated = dateUpdated
        ..hTeamId = hTeamId
        ..aTeamId = aTeamId
        ..scoreId = scoreId
        ..createdById = createdById,
    ),
  );

  return firestoreData;
}
