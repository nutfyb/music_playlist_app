part of 'track_bloc.dart';

@freezed
class TrackBlocEvent with _$TrackBlocEvent {
  const factory TrackBlocEvent.fetch() = _Fetch;
}