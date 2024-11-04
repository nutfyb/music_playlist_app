// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_track.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpotifyTrack _$SpotifyTrackFromJson(Map<String, dynamic> json) {
  return _SpotifyTrack.fromJson(json);
}

/// @nodoc
mixin _$SpotifyTrack {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get albumType => throw _privateConstructorUsedError;
  List<SpotifyArtist>? get artists => throw _privateConstructorUsedError;
  Map<String, String>? get externalUrls => throw _privateConstructorUsedError;
  SpotifyAlbum? get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int? get durationMs => throw _privateConstructorUsedError;

  /// Serializes this SpotifyTrack to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpotifyTrackCopyWith<SpotifyTrack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyTrackCopyWith<$Res> {
  factory $SpotifyTrackCopyWith(
          SpotifyTrack value, $Res Function(SpotifyTrack) then) =
      _$SpotifyTrackCopyWithImpl<$Res, SpotifyTrack>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? albumType,
      List<SpotifyArtist>? artists,
      Map<String, String>? externalUrls,
      SpotifyAlbum? album,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'duration_ms') int? durationMs});

  $SpotifyAlbumCopyWith<$Res>? get album;
}

/// @nodoc
class _$SpotifyTrackCopyWithImpl<$Res, $Val extends SpotifyTrack>
    implements $SpotifyTrackCopyWith<$Res> {
  _$SpotifyTrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? albumType = freezed,
    Object? artists = freezed,
    Object? externalUrls = freezed,
    Object? album = freezed,
    Object? previewUrl = freezed,
    Object? durationMs = freezed,
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
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtist>?,
      externalUrls: freezed == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotifyAlbum?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotifyAlbumCopyWith<$Res>? get album {
    if (_value.album == null) {
      return null;
    }

    return $SpotifyAlbumCopyWith<$Res>(_value.album!, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotifyTrackImplCopyWith<$Res>
    implements $SpotifyTrackCopyWith<$Res> {
  factory _$$SpotifyTrackImplCopyWith(
          _$SpotifyTrackImpl value, $Res Function(_$SpotifyTrackImpl) then) =
      __$$SpotifyTrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? albumType,
      List<SpotifyArtist>? artists,
      Map<String, String>? externalUrls,
      SpotifyAlbum? album,
      @JsonKey(name: 'preview_url') String? previewUrl,
      @JsonKey(name: 'duration_ms') int? durationMs});

  @override
  $SpotifyAlbumCopyWith<$Res>? get album;
}

/// @nodoc
class __$$SpotifyTrackImplCopyWithImpl<$Res>
    extends _$SpotifyTrackCopyWithImpl<$Res, _$SpotifyTrackImpl>
    implements _$$SpotifyTrackImplCopyWith<$Res> {
  __$$SpotifyTrackImplCopyWithImpl(
      _$SpotifyTrackImpl _value, $Res Function(_$SpotifyTrackImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? albumType = freezed,
    Object? artists = freezed,
    Object? externalUrls = freezed,
    Object? album = freezed,
    Object? previewUrl = freezed,
    Object? durationMs = freezed,
  }) {
    return _then(_$SpotifyTrackImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      albumType: freezed == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String?,
      artists: freezed == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<SpotifyArtist>?,
      externalUrls: freezed == externalUrls
          ? _value._externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      album: freezed == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as SpotifyAlbum?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      durationMs: freezed == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyTrackImpl implements _SpotifyTrack {
  _$SpotifyTrackImpl(
      {this.id,
      this.name,
      this.albumType,
      final List<SpotifyArtist>? artists,
      final Map<String, String>? externalUrls,
      this.album,
      @JsonKey(name: 'preview_url') this.previewUrl,
      @JsonKey(name: 'duration_ms') this.durationMs})
      : _artists = artists,
        _externalUrls = externalUrls;

  factory _$SpotifyTrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyTrackImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? albumType;
  final List<SpotifyArtist>? _artists;
  @override
  List<SpotifyArtist>? get artists {
    final value = _artists;
    if (value == null) return null;
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _externalUrls;
  @override
  Map<String, String>? get externalUrls {
    final value = _externalUrls;
    if (value == null) return null;
    if (_externalUrls is EqualUnmodifiableMapView) return _externalUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final SpotifyAlbum? album;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;
  @override
  @JsonKey(name: 'duration_ms')
  final int? durationMs;

  @override
  String toString() {
    return 'SpotifyTrack(id: $id, name: $name, albumType: $albumType, artists: $artists, externalUrls: $externalUrls, album: $album, previewUrl: $previewUrl, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyTrackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._externalUrls, _externalUrls) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      albumType,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_externalUrls),
      album,
      previewUrl,
      durationMs);

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyTrackImplCopyWith<_$SpotifyTrackImpl> get copyWith =>
      __$$SpotifyTrackImplCopyWithImpl<_$SpotifyTrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyTrackImplToJson(
      this,
    );
  }
}

abstract class _SpotifyTrack implements SpotifyTrack {
  factory _SpotifyTrack(
          {final String? id,
          final String? name,
          final String? albumType,
          final List<SpotifyArtist>? artists,
          final Map<String, String>? externalUrls,
          final SpotifyAlbum? album,
          @JsonKey(name: 'preview_url') final String? previewUrl,
          @JsonKey(name: 'duration_ms') final int? durationMs}) =
      _$SpotifyTrackImpl;

  factory _SpotifyTrack.fromJson(Map<String, dynamic> json) =
      _$SpotifyTrackImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get albumType;
  @override
  List<SpotifyArtist>? get artists;
  @override
  Map<String, String>? get externalUrls;
  @override
  SpotifyAlbum? get album;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;
  @override
  @JsonKey(name: 'duration_ms')
  int? get durationMs;

  /// Create a copy of SpotifyTrack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpotifyTrackImplCopyWith<_$SpotifyTrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
