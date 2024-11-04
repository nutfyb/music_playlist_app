import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_image.model.freezed.dart';
part 'spotify_image.model.g.dart';

@freezed
class SpotifyImage with _$SpotifyImage {
  factory SpotifyImage({
    int? height,
    int? width,
    String? url,
  }) = _SpotifyImage;

  factory SpotifyImage.fromJson(Map<String, dynamic> json) =>
      _$SpotifyImageFromJson(json);
}
