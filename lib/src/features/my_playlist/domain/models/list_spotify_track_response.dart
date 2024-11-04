
  import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_playlist_app/src/features/my_playlist/domain/domain.dart';

part 'list_spotify_track_response.freezed.dart';
part 'list_spotify_track_response.g.dart';

@freezed
class ListSpotifyTrackResponse with _$ListSpotifyTrackResponse {
  const factory ListSpotifyTrackResponse({
    List<SpotifyTrack>? tracks,
  }) = _ListSpotifyTrackResponse;

  factory ListSpotifyTrackResponse.fromJson(Map<String, dynamic> json) =>
      _$ListSpotifyTrackResponseFromJson(json);
}
