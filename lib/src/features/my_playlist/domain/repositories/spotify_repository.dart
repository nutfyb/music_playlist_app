import 'package:injectable/injectable.dart';
import 'package:spotify/spotify.dart';

@singleton
class SpotifyRepository {
  SpotifyRepository(@Named('spotify_api') this._spotify);
  
  final SpotifyApi _spotify;

  Future<List<Track>> getTracks(List<String> trackIds) async {
    final tracks = await Future.wait(
      trackIds.map((id) => _spotify.tracks.get(id))
    );
    return tracks;
  }
}
