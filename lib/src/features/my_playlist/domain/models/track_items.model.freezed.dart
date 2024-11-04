// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_items.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackItems _$TrackItemsFromJson(Map<String, dynamic> json) {
  return _TrackItems.fromJson(json);
}

/// @nodoc
mixin _$TrackItems {
  SpotifyTrack? get track => throw _privateConstructorUsedError;

  /// Serializes this TrackItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackItemsCopyWith<TrackItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackItemsCopyWith<$Res> {
  factory $TrackItemsCopyWith(
          TrackItems value, $Res Function(TrackItems) then) =
      _$TrackItemsCopyWithImpl<$Res, TrackItems>;
  @useResult
  $Res call({SpotifyTrack? track});

  $SpotifyTrackCopyWith<$Res>? get track;
}

/// @nodoc
class _$TrackItemsCopyWithImpl<$Res, $Val extends TrackItems>
    implements $TrackItemsCopyWith<$Res> {
  _$TrackItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_value.copyWith(
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as SpotifyTrack?,
    ) as $Val);
  }

  /// Create a copy of TrackItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpotifyTrackCopyWith<$Res>? get track {
    if (_value.track == null) {
      return null;
    }

    return $SpotifyTrackCopyWith<$Res>(_value.track!, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackItemsImplCopyWith<$Res>
    implements $TrackItemsCopyWith<$Res> {
  factory _$$TrackItemsImplCopyWith(
          _$TrackItemsImpl value, $Res Function(_$TrackItemsImpl) then) =
      __$$TrackItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SpotifyTrack? track});

  @override
  $SpotifyTrackCopyWith<$Res>? get track;
}

/// @nodoc
class __$$TrackItemsImplCopyWithImpl<$Res>
    extends _$TrackItemsCopyWithImpl<$Res, _$TrackItemsImpl>
    implements _$$TrackItemsImplCopyWith<$Res> {
  __$$TrackItemsImplCopyWithImpl(
      _$TrackItemsImpl _value, $Res Function(_$TrackItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? track = freezed,
  }) {
    return _then(_$TrackItemsImpl(
      track: freezed == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as SpotifyTrack?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackItemsImpl implements _TrackItems {
  _$TrackItemsImpl({this.track});

  factory _$TrackItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackItemsImplFromJson(json);

  @override
  final SpotifyTrack? track;

  @override
  String toString() {
    return 'TrackItems(track: $track)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackItemsImpl &&
            (identical(other.track, track) || other.track == track));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, track);

  /// Create a copy of TrackItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackItemsImplCopyWith<_$TrackItemsImpl> get copyWith =>
      __$$TrackItemsImplCopyWithImpl<_$TrackItemsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackItemsImplToJson(
      this,
    );
  }
}

abstract class _TrackItems implements TrackItems {
  factory _TrackItems({final SpotifyTrack? track}) = _$TrackItemsImpl;

  factory _TrackItems.fromJson(Map<String, dynamic> json) =
      _$TrackItemsImpl.fromJson;

  @override
  SpotifyTrack? get track;

  /// Create a copy of TrackItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackItemsImplCopyWith<_$TrackItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
