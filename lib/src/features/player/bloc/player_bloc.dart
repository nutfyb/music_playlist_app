import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import '../player.dart';

part 'player_bloc_event.dart';
part 'player_bloc_state.dart';
part 'player_bloc.freezed.dart';

@injectable
class PlayerBloc extends Bloc<PlayerBlocEvent, PlayerBlocState> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  PlayerBloc() : super(const PlayerBlocState()) {
    on<_Started>(_onStarted);
    on<_TogglePlayPause>(_onTogglePlayPause);
    on<_Seek>(_onSeek);
    on<_UpdatePalette>(_onUpdatePalette);
    on<_PlayerStateChanged>(_onPlayerStateChanged);
    on<_DurationChanged>(_onDurationChanged);
    on<_PositionChanged>(_onPositionChanged);
    on<_ToggleLoop>(_onToggleLoop);
    on<_SkipNext>(_onSkipNext);
    on<_SkipPrevious>(_onSkipPrevious);

    _setupAudioListeners();
  }

  void _setupAudioListeners() {
    _audioPlayer.onPlayerStateChanged.listen(
      (state) {
        add(PlayerBlocEvent.playerStateChanged(state));
        
        // Check if the song has completed
        if (state == PlayerState.completed && !this.state.isLooping) {
          add(const PlayerBlocEvent.skipNext());
        }
      },
    );
    _audioPlayer.onDurationChanged.listen(
      (duration) => add(PlayerBlocEvent.durationChanged(duration)),
    );
    _audioPlayer.onPositionChanged.listen(
      (position) => add(PlayerBlocEvent.positionChanged(position)),
    );
  }

  Future<void> _onStarted(_Started event, Emitter<PlayerBlocState> emit) async {
    try {
      // Stop current playback and reset state
      await _audioPlayer.stop();
      emit(state.copyWith(
        isPlaying: false,
        position: Duration.zero,
        duration: Duration.zero,
        isLoadingAudio: true,
      ));

      await _audioPlayer.setReleaseMode(ReleaseMode.stop);

      if (event.music.audioUrl == 'null') {
        final youtube = YoutubeExplode();
        final query =
            '${event.music.title} ${event.music.artist} official audio';

        final searchResult = await youtube.search.search(query);
        if (searchResult.isNotEmpty) {
          final videoId = searchResult.first.id.value;
          var streamManifest =
              await youtube.videos.streamsClient.getManifest(videoId);
          var audioStream = streamManifest.audioOnly.withHighestBitrate();
          var url = audioStream.url.toString();

          await _audioPlayer.setSourceUrl(url);
          emit(state.copyWith(isLoadingAudio: false));
          await _audioPlayer.resume();
        }
      } else {
        await _audioPlayer.setSource(AssetSource(event.music.audioUrl));
        emit(state.copyWith(isLoadingAudio: false));
        await _audioPlayer.resume();
      }
    } catch (e) {
      emit(state.copyWith(isLoadingAudio: false));
      debugPrint('Error in setupAudioPlayer: $e');
    }
  }

  Future<void> _onTogglePlayPause(
      _TogglePlayPause event, Emitter<PlayerBlocState> emit) async {
    try {
      state.isPlaying
          ? await _audioPlayer.pause()
          : await _audioPlayer.resume();
    } catch (e) {
      debugPrint('Error toggling playback: $e');
    }
  }

  Future<void> _onSeek(_Seek event, Emitter<PlayerBlocState> emit) async {
    final position = Duration(seconds: event.position.toInt());
    await _audioPlayer.seek(position);
    await _audioPlayer.resume();
  }

  Future<void> _onUpdatePalette(
      _UpdatePalette event, Emitter<PlayerBlocState> emit) async {
    if (state.isLoadingPalette) return;

    if (event.artworkUrl.isEmpty) {
      emit(state.copyWith(backgroundColor: Colors.black));
      return;
    }

    try {
      emit(state.copyWith(isLoadingPalette: true));

      final imageProvider = NetworkImage(event.artworkUrl);
      final paletteGenerator = await PaletteGenerator.fromImageProvider(
        imageProvider,
        size: const Size(200, 200),
        maximumColorCount: 20,
      );

      final newColor = paletteGenerator.darkMutedColor?.color ??
          paletteGenerator.darkVibrantColor?.color ??
          paletteGenerator.dominantColor?.color ??
          Colors.black;

      emit(state.copyWith(
        backgroundColor: newColor,
        isLoadingPalette: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        backgroundColor: Colors.black,
        isLoadingPalette: false,
      ));
    }
  }

  void _onPlayerStateChanged(
      _PlayerStateChanged event, Emitter<PlayerBlocState> emit) {
    emit(state.copyWith(isPlaying: event.state == PlayerState.playing));
  }

  void _onDurationChanged(
      _DurationChanged event, Emitter<PlayerBlocState> emit) {
    emit(state.copyWith(duration: event.duration));
  }

  void _onPositionChanged(
      _PositionChanged event, Emitter<PlayerBlocState> emit) {
    emit(state.copyWith(position: event.position));
  }

  Future<void> _onToggleLoop(
      _ToggleLoop event, Emitter<PlayerBlocState> emit) async {
    final newLoopMode = !state.isLooping;
    await _audioPlayer
        .setReleaseMode(newLoopMode ? ReleaseMode.loop : ReleaseMode.stop);
    emit(state.copyWith(isLooping: newLoopMode));
  }

  Future<void> _onSkipNext(_SkipNext event, Emitter<PlayerBlocState> emit) async {
    final currentMusic = currentlyPlaying.value;
    final currentPlaylist = currentPlaylistNotifier.value;
    
    if (currentMusic != null && currentPlaylist.isNotEmpty) {
      final currentIndex = currentPlaylist.indexWhere((m) => m.id == currentMusic.id);
      if (currentIndex < currentPlaylist.length - 1) {
        final nextMusic = currentPlaylist[currentIndex + 1];
        currentlyPlaying.value = nextMusic;
        add(PlayerBlocEvent.started(nextMusic));
        add(PlayerBlocEvent.updatePalette(nextMusic.artworkUrl));
      }
    }
  }

  Future<void> _onSkipPrevious(_SkipPrevious event, Emitter<PlayerBlocState> emit) async {
    final currentMusic = currentlyPlaying.value;
    final currentPlaylist = currentPlaylistNotifier.value;
    
    if (currentMusic != null && currentPlaylist.isNotEmpty) {
      final currentIndex = currentPlaylist.indexWhere((m) => m.id == currentMusic.id);
      if (currentIndex > 0) {
        final previousMusic = currentPlaylist[currentIndex - 1];
        currentlyPlaying.value = previousMusic;
        add(PlayerBlocEvent.started(previousMusic));
        add(PlayerBlocEvent.updatePalette(previousMusic.artworkUrl));
      }
    }
  }

  @override
  Future<void> close() {
    _audioPlayer
      ..onPlayerStateChanged.drain()
      ..onDurationChanged.drain()
      ..onPositionChanged.drain()
      ..dispose();
    return super.close();
  }
}
