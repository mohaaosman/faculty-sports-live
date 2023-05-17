import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'coachs_record.g.dart';

abstract class CoachsRecord
    implements Built<CoachsRecord, CoachsRecordBuilder> {
  static Serializer<CoachsRecord> get serializer => _$coachsRecordSerializer;

  @BuiltValueField(wireName: 'coach_name')
  int? get coachName;

  @BuiltValueField(wireName: 'date_created')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: 'coach_id')
  String? get coachId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CoachsRecordBuilder builder) => builder
    ..coachName = 0
    ..isActive = false
    ..coachId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coachs');

  static Stream<CoachsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CoachsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CoachsRecord._();
  factory CoachsRecord([void Function(CoachsRecordBuilder) updates]) =
      _$CoachsRecord;

  static CoachsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCoachsRecordData({
  int? coachName,
  DateTime? dateCreated,
  bool? isActive,
  String? coachId,
}) {
  final firestoreData = serializers.toFirestore(
    CoachsRecord.serializer,
    CoachsRecord(
      (c) => c
        ..coachName = coachName
        ..dateCreated = dateCreated
        ..isActive = isActive
        ..coachId = coachId,
    ),
  );

  return firestoreData;
}
