import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_playlist_app/src/features/my_playlist/domain/domain.dart';

part 'spotify_track.model.freezed.dart';
part 'spotify_track.model.g.dart';

@freezed
class SpotifyTrack with _$SpotifyTrack {
  factory SpotifyTrack({
    String? id,
    String? name,
    String? albumType,
    List<SpotifyArtist>? artists,
    Map<String, String>? externalUrls,
    SpotifyAlbum? album,
    @JsonKey(name: 'preview_url') String? previewUrl,
    @JsonKey(name: 'duration_ms') int? durationMs,
  }) = _SpotifyTrack;

  factory SpotifyTrack.fromJson(Map<String, dynamic> json) =>
      _$SpotifyTrackFromJson(json);
}
