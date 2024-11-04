// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerBlocEventCopyWith<$Res> {
  factory $PlayerBlocEventCopyWith(
          PlayerBlocEvent value, $Res Function(PlayerBlocEvent) then) =
      _$PlayerBlocEventCopyWithImpl<$Res, PlayerBlocEvent>;
}

/// @nodoc
class _$PlayerBlocEventCopyWithImpl<$Res, $Val extends PlayerBlocEvent>
    implements $PlayerBlocEventCopyWith<$Res> {
  _$PlayerBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Music music});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? music = null,
  }) {
    return _then(_$StartedImpl(
      null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as Music,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.music);

  @override
  final Music music;

  @override
  String toString() {
    return 'PlayerBlocEvent.started(music: $music)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.music, music) || other.music == music));
  }

  @override
  int get hashCode => Object.hash(runtimeType, music);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return started(music);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return started?.call(music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlayerBlocEvent {
  const factory _Started(final Music music) = _$StartedImpl;

  Music get music;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePlayPauseImplCopyWith<$Res> {
  factory _$$TogglePlayPauseImplCopyWith(_$TogglePlayPauseImpl value,
          $Res Function(_$TogglePlayPauseImpl) then) =
      __$$TogglePlayPauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePlayPauseImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$TogglePlayPauseImpl>
    implements _$$TogglePlayPauseImplCopyWith<$Res> {
  __$$TogglePlayPauseImplCopyWithImpl(
      _$TogglePlayPauseImpl _value, $Res Function(_$TogglePlayPauseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TogglePlayPauseImpl implements _TogglePlayPause {
  const _$TogglePlayPauseImpl();

  @override
  String toString() {
    return 'PlayerBlocEvent.togglePlayPause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglePlayPauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return togglePlayPause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return togglePlayPause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (togglePlayPause != null) {
      return togglePlayPause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return togglePlayPause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return togglePlayPause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (togglePlayPause != null) {
      return togglePlayPause(this);
    }
    return orElse();
  }
}

abstract class _TogglePlayPause implements PlayerBlocEvent {
  const factory _TogglePlayPause() = _$TogglePlayPauseImpl;
}

/// @nodoc
abstract class _$$SeekImplCopyWith<$Res> {
  factory _$$SeekImplCopyWith(
          _$SeekImpl value, $Res Function(_$SeekImpl) then) =
      __$$SeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double position});
}

/// @nodoc
class __$$SeekImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$SeekImpl>
    implements _$$SeekImplCopyWith<$Res> {
  __$$SeekImplCopyWithImpl(_$SeekImpl _value, $Res Function(_$SeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$SeekImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SeekImpl implements _Seek {
  const _$SeekImpl(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'PlayerBlocEvent.seek(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      __$$SeekImplCopyWithImpl<_$SeekImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return seek(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return seek?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return seek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return seek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (seek != null) {
      return seek(this);
    }
    return orElse();
  }
}

abstract class _Seek implements PlayerBlocEvent {
  const factory _Seek(final double position) = _$SeekImpl;

  double get position;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekImplCopyWith<_$SeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaletteImplCopyWith<$Res> {
  factory _$$UpdatePaletteImplCopyWith(
          _$UpdatePaletteImpl value, $Res Function(_$UpdatePaletteImpl) then) =
      __$$UpdatePaletteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String artworkUrl});
}

/// @nodoc
class __$$UpdatePaletteImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$UpdatePaletteImpl>
    implements _$$UpdatePaletteImplCopyWith<$Res> {
  __$$UpdatePaletteImplCopyWithImpl(
      _$UpdatePaletteImpl _value, $Res Function(_$UpdatePaletteImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artworkUrl = null,
  }) {
    return _then(_$UpdatePaletteImpl(
      null == artworkUrl
          ? _value.artworkUrl
          : artworkUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePaletteImpl implements _UpdatePalette {
  const _$UpdatePaletteImpl(this.artworkUrl);

  @override
  final String artworkUrl;

  @override
  String toString() {
    return 'PlayerBlocEvent.updatePalette(artworkUrl: $artworkUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaletteImpl &&
            (identical(other.artworkUrl, artworkUrl) ||
                other.artworkUrl == artworkUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, artworkUrl);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaletteImplCopyWith<_$UpdatePaletteImpl> get copyWith =>
      __$$UpdatePaletteImplCopyWithImpl<_$UpdatePaletteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return updatePalette(artworkUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return updatePalette?.call(artworkUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (updatePalette != null) {
      return updatePalette(artworkUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return updatePalette(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return updatePalette?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (updatePalette != null) {
      return updatePalette(this);
    }
    return orElse();
  }
}

abstract class _UpdatePalette implements PlayerBlocEvent {
  const factory _UpdatePalette(final String artworkUrl) = _$UpdatePaletteImpl;

  String get artworkUrl;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePaletteImplCopyWith<_$UpdatePaletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStateChangedImplCopyWith<$Res> {
  factory _$$PlayerStateChangedImplCopyWith(_$PlayerStateChangedImpl value,
          $Res Function(_$PlayerStateChangedImpl) then) =
      __$$PlayerStateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlayerState state});
}

/// @nodoc
class __$$PlayerStateChangedImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$PlayerStateChangedImpl>
    implements _$$PlayerStateChangedImplCopyWith<$Res> {
  __$$PlayerStateChangedImplCopyWithImpl(_$PlayerStateChangedImpl _value,
      $Res Function(_$PlayerStateChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$PlayerStateChangedImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PlayerState,
    ));
  }
}

/// @nodoc

class _$PlayerStateChangedImpl implements _PlayerStateChanged {
  const _$PlayerStateChangedImpl(this.state);

  @override
  final PlayerState state;

  @override
  String toString() {
    return 'PlayerBlocEvent.playerStateChanged(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateChangedImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateChangedImplCopyWith<_$PlayerStateChangedImpl> get copyWith =>
      __$$PlayerStateChangedImplCopyWithImpl<_$PlayerStateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return playerStateChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return playerStateChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (playerStateChanged != null) {
      return playerStateChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return playerStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return playerStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (playerStateChanged != null) {
      return playerStateChanged(this);
    }
    return orElse();
  }
}

abstract class _PlayerStateChanged implements PlayerBlocEvent {
  const factory _PlayerStateChanged(final PlayerState state) =
      _$PlayerStateChangedImpl;

  PlayerState get state;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateChangedImplCopyWith<_$PlayerStateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DurationChangedImplCopyWith<$Res> {
  factory _$$DurationChangedImplCopyWith(_$DurationChangedImpl value,
          $Res Function(_$DurationChangedImpl) then) =
      __$$DurationChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration duration});
}

/// @nodoc
class __$$DurationChangedImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$DurationChangedImpl>
    implements _$$DurationChangedImplCopyWith<$Res> {
  __$$DurationChangedImplCopyWithImpl(
      _$DurationChangedImpl _value, $Res Function(_$DurationChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$DurationChangedImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$DurationChangedImpl implements _DurationChanged {
  const _$DurationChangedImpl(this.duration);

  @override
  final Duration duration;

  @override
  String toString() {
    return 'PlayerBlocEvent.durationChanged(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationChangedImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationChangedImplCopyWith<_$DurationChangedImpl> get copyWith =>
      __$$DurationChangedImplCopyWithImpl<_$DurationChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return durationChanged?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return durationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class _DurationChanged implements PlayerBlocEvent {
  const factory _DurationChanged(final Duration duration) =
      _$DurationChangedImpl;

  Duration get duration;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationChangedImplCopyWith<_$DurationChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositionChangedImplCopyWith<$Res> {
  factory _$$PositionChangedImplCopyWith(_$PositionChangedImpl value,
          $Res Function(_$PositionChangedImpl) then) =
      __$$PositionChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration position});
}

/// @nodoc
class __$$PositionChangedImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$PositionChangedImpl>
    implements _$$PositionChangedImplCopyWith<$Res> {
  __$$PositionChangedImplCopyWithImpl(
      _$PositionChangedImpl _value, $Res Function(_$PositionChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$PositionChangedImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PositionChangedImpl implements _PositionChanged {
  const _$PositionChangedImpl(this.position);

  @override
  final Duration position;

  @override
  String toString() {
    return 'PlayerBlocEvent.positionChanged(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionChangedImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionChangedImplCopyWith<_$PositionChangedImpl> get copyWith =>
      __$$PositionChangedImplCopyWithImpl<_$PositionChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return positionChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return positionChanged?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (positionChanged != null) {
      return positionChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return positionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return positionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (positionChanged != null) {
      return positionChanged(this);
    }
    return orElse();
  }
}

abstract class _PositionChanged implements PlayerBlocEvent {
  const factory _PositionChanged(final Duration position) =
      _$PositionChangedImpl;

  Duration get position;

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionChangedImplCopyWith<_$PositionChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleLoopImplCopyWith<$Res> {
  factory _$$ToggleLoopImplCopyWith(
          _$ToggleLoopImpl value, $Res Function(_$ToggleLoopImpl) then) =
      __$$ToggleLoopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleLoopImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$ToggleLoopImpl>
    implements _$$ToggleLoopImplCopyWith<$Res> {
  __$$ToggleLoopImplCopyWithImpl(
      _$ToggleLoopImpl _value, $Res Function(_$ToggleLoopImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleLoopImpl implements _ToggleLoop {
  const _$ToggleLoopImpl();

  @override
  String toString() {
    return 'PlayerBlocEvent.toggleLoop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleLoopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return toggleLoop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return toggleLoop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (toggleLoop != null) {
      return toggleLoop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return toggleLoop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return toggleLoop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (toggleLoop != null) {
      return toggleLoop(this);
    }
    return orElse();
  }
}

abstract class _ToggleLoop implements PlayerBlocEvent {
  const factory _ToggleLoop() = _$ToggleLoopImpl;
}

/// @nodoc
abstract class _$$SkipNextImplCopyWith<$Res> {
  factory _$$SkipNextImplCopyWith(
          _$SkipNextImpl value, $Res Function(_$SkipNextImpl) then) =
      __$$SkipNextImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkipNextImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$SkipNextImpl>
    implements _$$SkipNextImplCopyWith<$Res> {
  __$$SkipNextImplCopyWithImpl(
      _$SkipNextImpl _value, $Res Function(_$SkipNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SkipNextImpl implements _SkipNext {
  const _$SkipNextImpl();

  @override
  String toString() {
    return 'PlayerBlocEvent.skipNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SkipNextImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return skipNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return skipNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (skipNext != null) {
      return skipNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return skipNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return skipNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (skipNext != null) {
      return skipNext(this);
    }
    return orElse();
  }
}

abstract class _SkipNext implements PlayerBlocEvent {
  const factory _SkipNext() = _$SkipNextImpl;
}

/// @nodoc
abstract class _$$SkipPreviousImplCopyWith<$Res> {
  factory _$$SkipPreviousImplCopyWith(
          _$SkipPreviousImpl value, $Res Function(_$SkipPreviousImpl) then) =
      __$$SkipPreviousImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkipPreviousImplCopyWithImpl<$Res>
    extends _$PlayerBlocEventCopyWithImpl<$Res, _$SkipPreviousImpl>
    implements _$$SkipPreviousImplCopyWith<$Res> {
  __$$SkipPreviousImplCopyWithImpl(
      _$SkipPreviousImpl _value, $Res Function(_$SkipPreviousImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SkipPreviousImpl implements _SkipPrevious {
  const _$SkipPreviousImpl();

  @override
  String toString() {
    return 'PlayerBlocEvent.skipPrevious()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SkipPreviousImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music music) started,
    required TResult Function() togglePlayPause,
    required TResult Function(double position) seek,
    required TResult Function(String artworkUrl) updatePalette,
    required TResult Function(PlayerState state) playerStateChanged,
    required TResult Function(Duration duration) durationChanged,
    required TResult Function(Duration position) positionChanged,
    required TResult Function() toggleLoop,
    required TResult Function() skipNext,
    required TResult Function() skipPrevious,
  }) {
    return skipPrevious();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Music music)? started,
    TResult? Function()? togglePlayPause,
    TResult? Function(double position)? seek,
    TResult? Function(String artworkUrl)? updatePalette,
    TResult? Function(PlayerState state)? playerStateChanged,
    TResult? Function(Duration duration)? durationChanged,
    TResult? Function(Duration position)? positionChanged,
    TResult? Function()? toggleLoop,
    TResult? Function()? skipNext,
    TResult? Function()? skipPrevious,
  }) {
    return skipPrevious?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music music)? started,
    TResult Function()? togglePlayPause,
    TResult Function(double position)? seek,
    TResult Function(String artworkUrl)? updatePalette,
    TResult Function(PlayerState state)? playerStateChanged,
    TResult Function(Duration duration)? durationChanged,
    TResult Function(Duration position)? positionChanged,
    TResult Function()? toggleLoop,
    TResult Function()? skipNext,
    TResult Function()? skipPrevious,
    required TResult orElse(),
  }) {
    if (skipPrevious != null) {
      return skipPrevious();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TogglePlayPause value) togglePlayPause,
    required TResult Function(_Seek value) seek,
    required TResult Function(_UpdatePalette value) updatePalette,
    required TResult Function(_PlayerStateChanged value) playerStateChanged,
    required TResult Function(_DurationChanged value) durationChanged,
    required TResult Function(_PositionChanged value) positionChanged,
    required TResult Function(_ToggleLoop value) toggleLoop,
    required TResult Function(_SkipNext value) skipNext,
    required TResult Function(_SkipPrevious value) skipPrevious,
  }) {
    return skipPrevious(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TogglePlayPause value)? togglePlayPause,
    TResult? Function(_Seek value)? seek,
    TResult? Function(_UpdatePalette value)? updatePalette,
    TResult? Function(_PlayerStateChanged value)? playerStateChanged,
    TResult? Function(_DurationChanged value)? durationChanged,
    TResult? Function(_PositionChanged value)? positionChanged,
    TResult? Function(_ToggleLoop value)? toggleLoop,
    TResult? Function(_SkipNext value)? skipNext,
    TResult? Function(_SkipPrevious value)? skipPrevious,
  }) {
    return skipPrevious?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TogglePlayPause value)? togglePlayPause,
    TResult Function(_Seek value)? seek,
    TResult Function(_UpdatePalette value)? updatePalette,
    TResult Function(_PlayerStateChanged value)? playerStateChanged,
    TResult Function(_DurationChanged value)? durationChanged,
    TResult Function(_PositionChanged value)? positionChanged,
    TResult Function(_ToggleLoop value)? toggleLoop,
    TResult Function(_SkipNext value)? skipNext,
    TResult Function(_SkipPrevious value)? skipPrevious,
    required TResult orElse(),
  }) {
    if (skipPrevious != null) {
      return skipPrevious(this);
    }
    return orElse();
  }
}

abstract class _SkipPrevious implements PlayerBlocEvent {
  const factory _SkipPrevious() = _$SkipPreviousImpl;
}

/// @nodoc
mixin _$PlayerBlocState {
  bool get isPlaying => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;
  bool get isLoadingPalette => throw _privateConstructorUsedError;
  bool get isLoadingAudio => throw _privateConstructorUsedError;
  bool get isLooping => throw _privateConstructorUsedError;

  /// Create a copy of PlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerBlocStateCopyWith<PlayerBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerBlocStateCopyWith<$Res> {
  factory $PlayerBlocStateCopyWith(
          PlayerBlocState value, $Res Function(PlayerBlocState) then) =
      _$PlayerBlocStateCopyWithImpl<$Res, PlayerBlocState>;
  @useResult
  $Res call(
      {bool isPlaying,
      Duration duration,
      Duration position,
      Color backgroundColor,
      bool isLoadingPalette,
      bool isLoadingAudio,
      bool isLooping});
}

/// @nodoc
class _$PlayerBlocStateCopyWithImpl<$Res, $Val extends PlayerBlocState>
    implements $PlayerBlocStateCopyWith<$Res> {
  _$PlayerBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? duration = null,
    Object? position = null,
    Object? backgroundColor = null,
    Object? isLoadingPalette = null,
    Object? isLoadingAudio = null,
    Object? isLooping = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      isLoadingPalette: null == isLoadingPalette
          ? _value.isLoadingPalette
          : isLoadingPalette // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAudio: null == isLoadingAudio
          ? _value.isLoadingAudio
          : isLoadingAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      isLooping: null == isLooping
          ? _value.isLooping
          : isLooping // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerBlocStateImplCopyWith<$Res>
    implements $PlayerBlocStateCopyWith<$Res> {
  factory _$$PlayerBlocStateImplCopyWith(_$PlayerBlocStateImpl value,
          $Res Function(_$PlayerBlocStateImpl) then) =
      __$$PlayerBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPlaying,
      Duration duration,
      Duration position,
      Color backgroundColor,
      bool isLoadingPalette,
      bool isLoadingAudio,
      bool isLooping});
}

/// @nodoc
class __$$PlayerBlocStateImplCopyWithImpl<$Res>
    extends _$PlayerBlocStateCopyWithImpl<$Res, _$PlayerBlocStateImpl>
    implements _$$PlayerBlocStateImplCopyWith<$Res> {
  __$$PlayerBlocStateImplCopyWithImpl(
      _$PlayerBlocStateImpl _value, $Res Function(_$PlayerBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
    Object? duration = null,
    Object? position = null,
    Object? backgroundColor = null,
    Object? isLoadingPalette = null,
    Object? isLoadingAudio = null,
    Object? isLooping = null,
  }) {
    return _then(_$PlayerBlocStateImpl(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      isLoadingPalette: null == isLoadingPalette
          ? _value.isLoadingPalette
          : isLoadingPalette // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingAudio: null == isLoadingAudio
          ? _value.isLoadingAudio
          : isLoadingAudio // ignore: cast_nullable_to_non_nullable
              as bool,
      isLooping: null == isLooping
          ? _value.isLooping
          : isLooping // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerBlocStateImpl implements _PlayerBlocState {
  const _$PlayerBlocStateImpl(
      {this.isPlaying = false,
      this.duration = Duration.zero,
      this.position = Duration.zero,
      this.backgroundColor = Colors.black,
      this.isLoadingPalette = false,
      this.isLoadingAudio = false,
      this.isLooping = false});

  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final Color backgroundColor;
  @override
  @JsonKey()
  final bool isLoadingPalette;
  @override
  @JsonKey()
  final bool isLoadingAudio;
  @override
  @JsonKey()
  final bool isLooping;

  @override
  String toString() {
    return 'PlayerBlocState(isPlaying: $isPlaying, duration: $duration, position: $position, backgroundColor: $backgroundColor, isLoadingPalette: $isLoadingPalette, isLoadingAudio: $isLoadingAudio, isLooping: $isLooping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerBlocStateImpl &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.isLoadingPalette, isLoadingPalette) ||
                other.isLoadingPalette == isLoadingPalette) &&
            (identical(other.isLoadingAudio, isLoadingAudio) ||
                other.isLoadingAudio == isLoadingAudio) &&
            (identical(other.isLooping, isLooping) ||
                other.isLooping == isLooping));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying, duration, position,
      backgroundColor, isLoadingPalette, isLoadingAudio, isLooping);

  /// Create a copy of PlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerBlocStateImplCopyWith<_$PlayerBlocStateImpl> get copyWith =>
      __$$PlayerBlocStateImplCopyWithImpl<_$PlayerBlocStateImpl>(
          this, _$identity);
}

abstract class _PlayerBlocState implements PlayerBlocState {
  const factory _PlayerBlocState(
      {final bool isPlaying,
      final Duration duration,
      final Duration position,
      final Color backgroundColor,
      final bool isLoadingPalette,
      final bool isLoadingAudio,
      final bool isLooping}) = _$PlayerBlocStateImpl;

  @override
  bool get isPlaying;
  @override
  Duration get duration;
  @override
  Duration get position;
  @override
  Color get backgroundColor;
  @override
  bool get isLoadingPalette;
  @override
  bool get isLoadingAudio;
  @override
  bool get isLooping;

  /// Create a copy of PlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerBlocStateImplCopyWith<_$PlayerBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
