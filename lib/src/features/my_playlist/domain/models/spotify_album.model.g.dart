// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_album.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyAlbumImpl _$$SpotifyAlbumImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyAlbumImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => SpotifyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SpotifyAlbumImplToJson(_$SpotifyAlbumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };
