// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_spotify_track_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListSpotifyTrackResponseImpl _$$ListSpotifyTrackResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ListSpotifyTrackResponseImpl(
      tracks: (json['tracks'] as List<dynamic>?)
          ?.map((e) => SpotifyTrack.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListSpotifyTrackResponseImplToJson(
        _$ListSpotifyTrackResponseImpl instance) =>
    <String, dynamic>{
      'tracks': instance.tracks,
    };
