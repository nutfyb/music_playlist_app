// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_track_items.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListTrackItemsImpl _$$ListTrackItemsImplFromJson(Map<String, dynamic> json) =>
    _$ListTrackItemsImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TrackItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListTrackItemsImplToJson(
        _$ListTrackItemsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
