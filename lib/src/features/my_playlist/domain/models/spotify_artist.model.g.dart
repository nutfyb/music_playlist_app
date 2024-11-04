// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_artist.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyArtistImpl _$$SpotifyArtistImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyArtistImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      externalUrls: (json['external_urls'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$SpotifyArtistImplToJson(_$SpotifyArtistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'external_urls': instance.externalUrls,
    };
