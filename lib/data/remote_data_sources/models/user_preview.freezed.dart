// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPreview _$UserPreviewFromJson(Map<String, dynamic> json) {
  return _UserPreview.fromJson(json);
}

/// @nodoc
mixin _$UserPreview {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreviewCopyWith<UserPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreviewCopyWith<$Res> {
  factory $UserPreviewCopyWith(
          UserPreview value, $Res Function(UserPreview) then) =
      _$UserPreviewCopyWithImpl<$Res, UserPreview>;
  @useResult
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture});
}

/// @nodoc
class _$UserPreviewCopyWithImpl<$Res, $Val extends UserPreview>
    implements $UserPreviewCopyWith<$Res> {
  _$UserPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? picture = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPreviewImplCopyWith<$Res>
    implements $UserPreviewCopyWith<$Res> {
  factory _$$UserPreviewImplCopyWith(
          _$UserPreviewImpl value, $Res Function(_$UserPreviewImpl) then) =
      __$$UserPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture});
}

/// @nodoc
class __$$UserPreviewImplCopyWithImpl<$Res>
    extends _$UserPreviewCopyWithImpl<$Res, _$UserPreviewImpl>
    implements _$$UserPreviewImplCopyWith<$Res> {
  __$$UserPreviewImplCopyWithImpl(
      _$UserPreviewImpl _value, $Res Function(_$UserPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? picture = null,
  }) {
    return _then(_$UserPreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: null == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPreviewImpl implements _UserPreview {
  const _$UserPreviewImpl(
      {this.id = '',
      this.title = '',
      this.firstName = '',
      this.lastName = '',
      this.picture = ''});

  factory _$UserPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPreviewImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String picture;

  @override
  String toString() {
    return 'UserPreview(id: $id, title: $title, firstName: $firstName, lastName: $lastName, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, firstName, lastName, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPreviewImplCopyWith<_$UserPreviewImpl> get copyWith =>
      __$$UserPreviewImplCopyWithImpl<_$UserPreviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPreviewImplToJson(
      this,
    );
  }
}

abstract class _UserPreview implements UserPreview {
  const factory _UserPreview(
      {final String id,
      final String title,
      final String firstName,
      final String lastName,
      final String picture}) = _$UserPreviewImpl;

  factory _UserPreview.fromJson(Map<String, dynamic> json) =
      _$UserPreviewImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$UserPreviewImplCopyWith<_$UserPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
