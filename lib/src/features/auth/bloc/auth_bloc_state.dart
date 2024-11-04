part of 'auth_bloc.dart';

@freezed
abstract class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState.initializing() = _Initializing;
  const factory AuthBlocState.fetching() = _Fetching;
  const factory AuthBlocState.fetched(String accessToken) = _Fetched;
  const factory AuthBlocState.failed(String errorMessage) = _Failed;
}
