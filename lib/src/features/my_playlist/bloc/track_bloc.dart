import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:music_playlist_app/src/features/my_playlist/domain/domain.dart';
import 'package:spotify/spotify.dart';

part 'track_bloc_event.dart';
part 'track_bloc_state.dart';
part 'track_bloc.freezed.dart';

@injectable
class TrackBloc extends Bloc<TrackBlocEvent, TrackBlocState> {
  TrackBloc(this._spotifyService)
      : super(const TrackBlocState.initializing()) {
    on<TrackBlocEvent>(_onFetch);
  }

  final SpotifyRepositoryService _spotifyService;

  Future<void> _onFetch(
    TrackBlocEvent event,
    Emitter<TrackBlocState> emit,
  ) async {
    try {
      emit(const TrackBlocState.fetching());

      final tracks = await _spotifyService.apiService.getTracks([
        '5vNRhkKd0yEAg8suGBpjeY',
        '2CspwnypzT7rcWI9RfsoSb',
        '3yDRcs0Y4pPzkvMbUfeF9H',
        '6BN3iFjclJ4teGlmB3fFvo',
        '2LJerOY5jSwO5K6OF9Cyuz',
        '4kE80JWRissrodmXuo0xYi',
        '7syPkLWA4AjH2jto6FDjEC',
        '5F4fAhzhdHtaQ8nNqWAufl',
        '72Jc8BV2cEQAOuVoHVTJy3',
        '11dFghVXANMlKmJXsNCbNl',
        '20I6sIOMTCkB6w7ryavxtO',
      ]);
      print('Tracks: $tracks');
      return emit(TrackBlocState.fetched(tracks));
    } catch (e) {
      print('Error fetching tracks: $e');
      return emit(TrackBlocState.failed(e.toString()));
    }
  }

  void initialize() => add(const TrackBlocEvent.fetch());
}
