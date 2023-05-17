import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'teams_record.g.dart';

abstract class TeamsRecord implements Built<TeamsRecord, TeamsRecordBuilder> {
  static Serializer<TeamsRecord> get serializer => _$teamsRecordSerializer;

  @BuiltValueField(wireName: 'team_name')
  String? get teamName;

  @BuiltValueField(wireName: 'faculty_name')
  String? get facultyName;

  @BuiltValueField(wireName: 'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: 'date_created')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'coach_id')
  DocumentReference? get coachId;

  @BuiltValueField(wireName: 'image_path')
  String? get imagePath;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TeamsRecordBuilder builder) => builder
    ..teamName = ''
    ..facultyName = ''
    ..isActive = false
    ..imagePath = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teams');

  static Stream<TeamsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TeamsRecord._();
  factory TeamsRecord([void Function(TeamsRecordBuilder) updates]) =
      _$TeamsRecord;

  static TeamsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTeamsRecordData({
  String? teamName,
  String? facultyName,
  bool? isActive,
  DateTime? dateCreated,
  DocumentReference? coachId,
  String? imagePath,
}) {
  final firestoreData = serializers.toFirestore(
    TeamsRecord.serializer,
    TeamsRecord(
      (t) => t
        ..teamName = teamName
        ..facultyName = facultyName
        ..isActive = isActive
        ..dateCreated = dateCreated
        ..coachId = coachId
        ..imagePath = imagePath,
    ),
  );

  return firestoreData;
}
