part of 'track_bloc.dart';

@freezed
abstract class TrackBlocState with _$TrackBlocState {
const factory TrackBlocState.initializing() = _Initializing;
const factory TrackBlocState.fetching() = _Fetching;
const factory TrackBlocState.fetched(List<Track> tracks) = _Fetched;
const factory TrackBlocState.failed(String errorMessage) = _Failed;
}
