import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_playlist_app/src/features/my_playlist/my_playlist.dart';

part 'list_track_items.model.freezed.dart';
part 'list_track_items.model.g.dart';

@freezed
class ListTrackItems with _$ListTrackItems {
  factory ListTrackItems({
    List<TrackItems>? items,
  }) = _ListTrackItems;

  factory ListTrackItems.fromJson(Map<String, dynamic> json) =>
      _$ListTrackItemsFromJson(json);
}
