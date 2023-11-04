// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostPreview _$PostPreviewFromJson(Map<String, dynamic> json) {
  return _PostPreview.fromJson(json);
}

/// @nodoc
mixin _$PostPreview {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  num get likes => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get publishDate => throw _privateConstructorUsedError;
  UserPreview get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostPreviewCopyWith<PostPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPreviewCopyWith<$Res> {
  factory $PostPreviewCopyWith(
          PostPreview value, $Res Function(PostPreview) then) =
      _$PostPreviewCopyWithImpl<$Res, PostPreview>;
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      num likes,
      List<String> tags,
      String publishDate,
      UserPreview owner});

  $UserPreviewCopyWith<$Res> get owner;
}

/// @nodoc
class _$PostPreviewCopyWithImpl<$Res, $Val extends PostPreview>
    implements $PostPreviewCopyWith<$Res> {
  _$PostPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? publishDate = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserPreview,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserPreviewCopyWith<$Res> get owner {
    return $UserPreviewCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostPreviewImplCopyWith<$Res>
    implements $PostPreviewCopyWith<$Res> {
  factory _$$PostPreviewImplCopyWith(
          _$PostPreviewImpl value, $Res Function(_$PostPreviewImpl) then) =
      __$$PostPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      num likes,
      List<String> tags,
      String publishDate,
      UserPreview owner});

  @override
  $UserPreviewCopyWith<$Res> get owner;
}

/// @nodoc
class __$$PostPreviewImplCopyWithImpl<$Res>
    extends _$PostPreviewCopyWithImpl<$Res, _$PostPreviewImpl>
    implements _$$PostPreviewImplCopyWith<$Res> {
  __$$PostPreviewImplCopyWithImpl(
      _$PostPreviewImpl _value, $Res Function(_$PostPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? tags = null,
    Object? publishDate = null,
    Object? owner = null,
  }) {
    return _then(_$PostPreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      publishDate: null == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserPreview,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPreviewImpl implements _PostPreview {
  const _$PostPreviewImpl(
      {this.id = '',
      this.text = '',
      this.image = '',
      this.likes = 0,
      final List<String> tags = const [],
      this.publishDate = '',
      this.owner = const UserPreview()})
      : _tags = tags;

  factory _$PostPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPreviewImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final num likes;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final String publishDate;
  @override
  @JsonKey()
  final UserPreview owner;

  @override
  String toString() {
    return 'PostPreview(id: $id, text: $text, image: $image, likes: $likes, tags: $tags, publishDate: $publishDate, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, image, likes,
      const DeepCollectionEquality().hash(_tags), publishDate, owner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPreviewImplCopyWith<_$PostPreviewImpl> get copyWith =>
      __$$PostPreviewImplCopyWithImpl<_$PostPreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPreviewImplToJson(
      this,
    );
  }
}

abstract class _PostPreview implements PostPreview {
  const factory _PostPreview(
      {final String id,
      final String text,
      final String image,
      final num likes,
      final List<String> tags,
      final String publishDate,
      final UserPreview owner}) = _$PostPreviewImpl;

  factory _PostPreview.fromJson(Map<String, dynamic> json) =
      _$PostPreviewImpl.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get image;
  @override
  num get likes;
  @override
  List<String> get tags;
  @override
  String get publishDate;
  @override
  UserPreview get owner;
  @override
  @JsonKey(ignore: true)
  _$$PostPreviewImplCopyWith<_$PostPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
