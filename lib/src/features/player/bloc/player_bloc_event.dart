part of 'player_bloc.dart';

@freezed
class PlayerBlocEvent with _$PlayerBlocEvent {
  const factory PlayerBlocEvent.started(Music music) = _Started;
  const factory PlayerBlocEvent.togglePlayPause() = _TogglePlayPause;
  const factory PlayerBlocEvent.seek(double position) = _Seek;
  const factory PlayerBlocEvent.updatePalette(String artworkUrl) =
      _UpdatePalette;
  const factory PlayerBlocEvent.playerStateChanged(PlayerState state) =
      _PlayerStateChanged;
  const factory PlayerBlocEvent.durationChanged(Duration duration) =
      _DurationChanged;
  const factory PlayerBlocEvent.positionChanged(Duration position) =
      _PositionChanged;
  const factory PlayerBlocEvent.toggleLoop() = _ToggleLoop;
  const factory PlayerBlocEvent.skipNext() = _SkipNext;
  const factory PlayerBlocEvent.skipPrevious() = _SkipPrevious;
}
