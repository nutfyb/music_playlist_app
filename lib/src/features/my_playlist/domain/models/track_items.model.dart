import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';

part 'track_items.model.freezed.dart';
part 'track_items.model.g.dart';

@freezed
class TrackItems with _$TrackItems {
  factory TrackItems({
    SpotifyTrack? track,
  }) = _TrackItems;

  factory TrackItems.fromJson(Map<String, dynamic> json) =>
      _$TrackItemsFromJson(json);
}
