import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_artist.model.freezed.dart';
part 'spotify_artist.model.g.dart';

@freezed
class SpotifyArtist with _$SpotifyArtist {
  factory SpotifyArtist({
    String? id,
    String? name,
    @JsonKey(name: 'external_urls') Map<String, String>? externalUrls,
  }) = _SpotifyArtist;

  factory SpotifyArtist.fromJson(Map<String, dynamic> json) =>
      _$SpotifyArtistFromJson(json);
}
