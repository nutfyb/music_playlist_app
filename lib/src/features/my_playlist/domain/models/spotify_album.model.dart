import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_playlist_app/src/features/my_playlist/domain/domain.dart';

part 'spotify_album.model.freezed.dart';
part 'spotify_album.model.g.dart';

@freezed
class SpotifyAlbum with _$SpotifyAlbum {
  factory SpotifyAlbum({
    String? id,
    String? name,
    List<SpotifyImage>? images,
  }) = _SpotifyAlbum;

  factory SpotifyAlbum.fromJson(Map<String, dynamic> json) =>
      _$SpotifyAlbumFromJson(json);
}
