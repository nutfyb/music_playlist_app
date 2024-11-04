// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_track_items.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListTrackItems _$ListTrackItemsFromJson(Map<String, dynamic> json) {
  return _ListTrackItems.fromJson(json);
}

/// @nodoc
mixin _$ListTrackItems {
  List<TrackItems>? get items => throw _privateConstructorUsedError;

  /// Serializes this ListTrackItems to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListTrackItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListTrackItemsCopyWith<ListTrackItems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTrackItemsCopyWith<$Res> {
  factory $ListTrackItemsCopyWith(
          ListTrackItems value, $Res Function(ListTrackItems) then) =
      _$ListTrackItemsCopyWithImpl<$Res, ListTrackItems>;
  @useResult
  $Res call({List<TrackItems>? items});
}

/// @nodoc
class _$ListTrackItemsCopyWithImpl<$Res, $Val extends ListTrackItems>
    implements $ListTrackItemsCopyWith<$Res> {
  _$ListTrackItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListTrackItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TrackItems>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListTrackItemsImplCopyWith<$Res>
    implements $ListTrackItemsCopyWith<$Res> {
  factory _$$ListTrackItemsImplCopyWith(_$ListTrackItemsImpl value,
          $Res Function(_$ListTrackItemsImpl) then) =
      __$$ListTrackItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TrackItems>? items});
}

/// @nodoc
class __$$ListTrackItemsImplCopyWithImpl<$Res>
    extends _$ListTrackItemsCopyWithImpl<$Res, _$ListTrackItemsImpl>
    implements _$$ListTrackItemsImplCopyWith<$Res> {
  __$$ListTrackItemsImplCopyWithImpl(
      _$ListTrackItemsImpl _value, $Res Function(_$ListTrackItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListTrackItems
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$ListTrackItemsImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<TrackItems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListTrackItemsImpl implements _ListTrackItems {
  _$ListTrackItemsImpl({final List<TrackItems>? items}) : _items = items;

  factory _$ListTrackItemsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListTrackItemsImplFromJson(json);

  final List<TrackItems>? _items;
  @override
  List<TrackItems>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListTrackItems(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTrackItemsImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ListTrackItems
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTrackItemsImplCopyWith<_$ListTrackItemsImpl> get copyWith =>
      __$$ListTrackItemsImplCopyWithImpl<_$ListTrackItemsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListTrackItemsImplToJson(
      this,
    );
  }
}

abstract class _ListTrackItems implements ListTrackItems {
  factory _ListTrackItems({final List<TrackItems>? items}) =
      _$ListTrackItemsImpl;

  factory _ListTrackItems.fromJson(Map<String, dynamic> json) =
      _$ListTrackItemsImpl.fromJson;

  @override
  List<TrackItems>? get items;

  /// Create a copy of ListTrackItems
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListTrackItemsImplCopyWith<_$ListTrackItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
