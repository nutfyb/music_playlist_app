// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_track.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyTrackImpl _$$SpotifyTrackImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyTrackImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      albumType: json['albumType'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => SpotifyArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalUrls: (json['externalUrls'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      album: json['album'] == null
          ? null
          : SpotifyAlbum.fromJson(json['album'] as Map<String, dynamic>),
      previewUrl: json['preview_url'] as String?,
      durationMs: (json['duration_ms'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SpotifyTrackImplToJson(_$SpotifyTrackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'albumType': instance.albumType,
      'artists': instance.artists,
      'externalUrls': instance.externalUrls,
      'album': instance.album,
      'preview_url': instance.previewUrl,
      'duration_ms': instance.durationMs,
    };
