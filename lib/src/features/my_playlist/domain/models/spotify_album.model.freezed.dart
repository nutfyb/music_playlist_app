// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_album.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyAlbum _$SpotifyAlbumFromJson(Map<String, dynamic> json) {
  return _SpotifyAlbum.fromJson(json);
}

/// @nodoc
mixin _$SpotifyAlbum {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<SpotifyImage>? get images => throw _privateConstructorUsedError;

  /// Serializes this SpotifyAlbum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyAlbumCopyWith<SpotifyAlbum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyAlbumCopyWith<$Res> {
  factory $SpotifyAlbumCopyWith(
          SpotifyAlbum value, $Res Function(SpotifyAlbum) then) =
      _$SpotifyAlbumCopyWithImpl<$Res, SpotifyAlbum>;
  @useResult
  $Res call({String? id, String? name, List<SpotifyImage>? images});
}

/// @nodoc
class _$SpotifyAlbumCopyWithImpl<$Res, $Val extends SpotifyAlbum>
    implements $SpotifyAlbumCopyWith<$Res> {
  _$SpotifyAlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyAlbumImplCopyWith<$Res>
    implements $SpotifyAlbumCopyWith<$Res> {
  factory _$$SpotifyAlbumImplCopyWith(
          _$SpotifyAlbumImpl value, $Res Function(_$SpotifyAlbumImpl) then) =
      __$$SpotifyAlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, List<SpotifyImage>? images});
}

/// @nodoc
class __$$SpotifyAlbumImplCopyWithImpl<$Res>
    extends _$SpotifyAlbumCopyWithImpl<$Res, _$SpotifyAlbumImpl>
    implements _$$SpotifyAlbumImplCopyWith<$Res> {
  __$$SpotifyAlbumImplCopyWithImpl(
      _$SpotifyAlbumImpl _value, $Res Function(_$SpotifyAlbumImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? images = freezed,
  }) {
    return _then(_$SpotifyAlbumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<SpotifyImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyAlbumImpl implements _SpotifyAlbum {
  _$SpotifyAlbumImpl({this.id, this.name, final List<SpotifyImage>? images})
      : _images = images;

  factory _$SpotifyAlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyAlbumImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final List<SpotifyImage>? _images;
  @override
  List<SpotifyImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpotifyAlbum(id: $id, name: $name, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyAlbumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_images));

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyAlbumImplCopyWith<_$SpotifyAlbumImpl> get copyWith =>
      __$$SpotifyAlbumImplCopyWithImpl<_$SpotifyAlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyAlbumImplToJson(
      this,
    );
  }
}

abstract class _SpotifyAlbum implements SpotifyAlbum {
  factory _SpotifyAlbum(
      {final String? id,
      final String? name,
      final List<SpotifyImage>? images}) = _$SpotifyAlbumImpl;

  factory _SpotifyAlbum.fromJson(Map<String, dynamic> json) =
      _$SpotifyAlbumImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<SpotifyImage>? get images;

  /// Create a copy of SpotifyAlbum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyAlbumImplCopyWith<_$SpotifyAlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
