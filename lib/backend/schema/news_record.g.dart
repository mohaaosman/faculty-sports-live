// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsRecord> _$newsRecordSerializer = new _$NewsRecordSerializer();

class _$NewsRecordSerializer implements StructuredSerializer<NewsRecord> {
  @override
  final Iterable<Type> types = const [NewsRecord, _$NewsRecord];
  @override
  final String wireName = 'NewsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.articleId;
    if (value != null) {
      result
        ..add('article_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.publishedDate;
    if (value != null) {
      result
        ..add('published_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isPublished;
    if (value != null) {
      result
        ..add('is_published')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
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
  NewsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'article_id':
          result.articleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'published_date':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'is_published':
          result.isPublished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
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

class _$NewsRecord extends NewsRecord {
  @override
  final String? articleId;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final DocumentReference<Object?>? author;
  @override
  final DateTime? publishedDate;
  @override
  final bool? isPublished;
  @override
  final String? imageUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewsRecord([void Function(NewsRecordBuilder)? updates]) =>
      (new NewsRecordBuilder()..update(updates))._build();

  _$NewsRecord._(
      {this.articleId,
      this.title,
      this.content,
      this.author,
      this.publishedDate,
      this.isPublished,
      this.imageUrl,
      this.ffRef})
      : super._();

  @override
  NewsRecord rebuild(void Function(NewsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRecordBuilder toBuilder() => new NewsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRecord &&
        articleId == other.articleId &&
        title == other.title &&
        content == other.content &&
        author == other.author &&
        publishedDate == other.publishedDate &&
        isPublished == other.isPublished &&
        imageUrl == other.imageUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, articleId.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, isPublished.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsRecord')
          ..add('articleId', articleId)
          ..add('title', title)
          ..add('content', content)
          ..add('author', author)
          ..add('publishedDate', publishedDate)
          ..add('isPublished', isPublished)
          ..add('imageUrl', imageUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewsRecordBuilder implements Builder<NewsRecord, NewsRecordBuilder> {
  _$NewsRecord? _$v;

  String? _articleId;
  String? get articleId => _$this._articleId;
  set articleId(String? articleId) => _$this._articleId = articleId;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  DocumentReference<Object?>? _author;
  DocumentReference<Object?>? get author => _$this._author;
  set author(DocumentReference<Object?>? author) => _$this._author = author;

  DateTime? _publishedDate;
  DateTime? get publishedDate => _$this._publishedDate;
  set publishedDate(DateTime? publishedDate) =>
      _$this._publishedDate = publishedDate;

  bool? _isPublished;
  bool? get isPublished => _$this._isPublished;
  set isPublished(bool? isPublished) => _$this._isPublished = isPublished;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewsRecordBuilder() {
    NewsRecord._initializeBuilder(this);
  }

  NewsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _articleId = $v.articleId;
      _title = $v.title;
      _content = $v.content;
      _author = $v.author;
      _publishedDate = $v.publishedDate;
      _isPublished = $v.isPublished;
      _imageUrl = $v.imageUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRecord;
  }

  @override
  void update(void Function(NewsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsRecord build() => _build();

  _$NewsRecord _build() {
    final _$result = _$v ??
        new _$NewsRecord._(
            articleId: articleId,
            title: title,
            content: content,
            author: author,
            publishedDate: publishedDate,
            isPublished: isPublished,
            imageUrl: imageUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
