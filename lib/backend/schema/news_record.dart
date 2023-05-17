import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'news_record.g.dart';

abstract class NewsRecord implements Built<NewsRecord, NewsRecordBuilder> {
  static Serializer<NewsRecord> get serializer => _$newsRecordSerializer;

  @BuiltValueField(wireName: 'article_id')
  String? get articleId;

  String? get title;

  String? get content;

  DocumentReference? get author;

  @BuiltValueField(wireName: 'published_date')
  DateTime? get publishedDate;

  @BuiltValueField(wireName: 'is_published')
  bool? get isPublished;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewsRecordBuilder builder) => builder
    ..articleId = ''
    ..title = ''
    ..content = ''
    ..isPublished = false
    ..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewsRecord._();
  factory NewsRecord([void Function(NewsRecordBuilder) updates]) = _$NewsRecord;

  static NewsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewsRecordData({
  String? articleId,
  String? title,
  String? content,
  DocumentReference? author,
  DateTime? publishedDate,
  bool? isPublished,
  String? imageUrl,
}) {
  final firestoreData = serializers.toFirestore(
    NewsRecord.serializer,
    NewsRecord(
      (n) => n
        ..articleId = articleId
        ..title = title
        ..content = content
        ..author = author
        ..publishedDate = publishedDate
        ..isPublished = isPublished
        ..imageUrl = imageUrl,
    ),
  );

  return firestoreData;
}
