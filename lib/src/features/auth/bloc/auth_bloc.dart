import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:music_playlist_app/src/features/auth/auth.dart';
import 'package:music_playlist_app/src/core/services/token_storage_service.dart';
import 'package:spotify/spotify.dart';

part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  AuthBloc(this._authRepository, this._tokenStorage) 
      : super(const AuthBlocState.initializing()) {
    on<_Started>((event, emit) {
      emit(const AuthBlocState.initializing());
    });
    on<_Authenticate>(_onAuth);
  }
  
  final AuthRepository _authRepository;
  final TokenStorageService _tokenStorage;

  Future<void> _onAuth(AuthBlocEvent event, Emitter<AuthBlocState> emit) async {
    emit(const AuthBlocState.fetching());
    try {
      final credentials = SpotifyApiCredentials(
        'fb1f9d3d114a4620bca1cd14676d4d0a',
        '5c18372d8201494ca326c3dc7d62dd15',
      );
      
      final grant = SpotifyApi.authorizationCodeGrant(credentials);
      final accessToken = await grant.authorizationEndpoint;
      
      _tokenStorage.setSpotifyToken(accessToken.toString());
      emit(AuthBlocState.fetched(accessToken.toString()));
    } catch (e) {
      emit(AuthBlocState.failed(e.toString()));
    }
  }
}
