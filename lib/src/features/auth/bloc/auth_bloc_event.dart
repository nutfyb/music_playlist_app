part of 'auth_bloc.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.started() = _Started;
  const factory AuthBlocEvent.authenticate() = _Authenticate;
  const factory AuthBlocEvent.authenticated(String accessToken) = _Authenticated;
  const factory AuthBlocEvent.error(String message) = _Error;
}
