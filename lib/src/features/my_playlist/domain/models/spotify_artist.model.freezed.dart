// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_artist.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyArtist _$SpotifyArtistFromJson(Map<String, dynamic> json) {
  return _SpotifyArtist.fromJson(json);
}

/// @nodoc
mixin _$SpotifyArtist {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'external_urls')
  Map<String, String>? get externalUrls => throw _privateConstructorUsedError;

  /// Serializes this SpotifyArtist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyArtistCopyWith<SpotifyArtist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyArtistCopyWith<$Res> {
  factory $SpotifyArtistCopyWith(
          SpotifyArtist value, $Res Function(SpotifyArtist) then) =
      _$SpotifyArtistCopyWithImpl<$Res, SpotifyArtist>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'external_urls') Map<String, String>? externalUrls});
}

/// @nodoc
class _$SpotifyArtistCopyWithImpl<$Res, $Val extends SpotifyArtist>
    implements $SpotifyArtistCopyWith<$Res> {
  _$SpotifyArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? externalUrls = freezed,
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
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpotifyArtistImplCopyWith<$Res>
    implements $SpotifyArtistCopyWith<$Res> {
  factory _$$SpotifyArtistImplCopyWith(
          _$SpotifyArtistImpl value, $Res Function(_$SpotifyArtistImpl) then) =
      __$$SpotifyArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'external_urls') Map<String, String>? externalUrls});
}

/// @nodoc
class __$$SpotifyArtistImplCopyWithImpl<$Res>
    extends _$SpotifyArtistCopyWithImpl<$Res, _$SpotifyArtistImpl>
    implements _$$SpotifyArtistImplCopyWith<$Res> {
  __$$SpotifyArtistImplCopyWithImpl(
      _$SpotifyArtistImpl _value, $Res Function(_$SpotifyArtistImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? externalUrls = freezed,
  }) {
    return _then(_$SpotifyArtistImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: freezed == externalUrls
          ? _value._externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyArtistImpl implements _SpotifyArtist {
  _$SpotifyArtistImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'external_urls') final Map<String, String>? externalUrls})
      : _externalUrls = externalUrls;

  factory _$SpotifyArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyArtistImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  final Map<String, String>? _externalUrls;
  @override
  @JsonKey(name: 'external_urls')
  Map<String, String>? get externalUrls {
    final value = _externalUrls;
    if (value == null) return null;
    if (_externalUrls is EqualUnmodifiableMapView) return _externalUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SpotifyArtist(id: $id, name: $name, externalUrls: $externalUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyArtistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._externalUrls, _externalUrls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_externalUrls));

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyArtistImplCopyWith<_$SpotifyArtistImpl> get copyWith =>
      __$$SpotifyArtistImplCopyWithImpl<_$SpotifyArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyArtistImplToJson(
      this,
    );
  }
}

abstract class _SpotifyArtist implements SpotifyArtist {
  factory _SpotifyArtist(
      {final String? id,
      final String? name,
      @JsonKey(name: 'external_urls')
      final Map<String, String>? externalUrls}) = _$SpotifyArtistImpl;

  factory _SpotifyArtist.fromJson(Map<String, dynamic> json) =
      _$SpotifyArtistImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'external_urls')
  Map<String, String>? get externalUrls;

  /// Create a copy of SpotifyArtist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyArtistImplCopyWith<_$SpotifyArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
