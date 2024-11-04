// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_image.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyImageImpl _$$SpotifyImageImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyImageImpl(
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SpotifyImageImplToJson(_$SpotifyImageImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
    };
