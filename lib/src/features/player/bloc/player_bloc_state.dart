part of 'player_bloc.dart';

@freezed
class PlayerBlocState with _$PlayerBlocState {
  const factory PlayerBlocState({
    @Default(false) bool isPlaying,
    @Default(Duration.zero) Duration duration,
    @Default(Duration.zero) Duration position,
    @Default(Colors.black) Color backgroundColor,
    @Default(false) bool isLoadingPalette,
    @Default(false) bool isLoadingAudio,
    @Default(false) bool isLooping,
  }) = _PlayerBlocState;
}
