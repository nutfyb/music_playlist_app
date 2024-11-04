// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_items.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackItemsImpl _$$TrackItemsImplFromJson(Map<String, dynamic> json) =>
    _$TrackItemsImpl(
      track: json['track'] == null
          ? null
          : SpotifyTrack.fromJson(json['track'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrackItemsImplToJson(_$TrackItemsImpl instance) =>
    <String, dynamic>{
      'track': instance.track,
    };
