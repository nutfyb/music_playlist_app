import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:music_playlist_app/src/core/services/token_storage_service.dart';
import 'package:music_playlist_app/src/features/my_playlist/domain/domain.dart';
import 'package:spotify/spotify.dart';

@injectable
class SpotifyRepositoryService {
  final SpotifyRepository apiService;
  final TokenStorageService _tokenStorage;

  SpotifyRepositoryService(
    TokenStorageService tokenStorage,
    Dio dio,
  )   : _tokenStorage = tokenStorage,
        apiService = SpotifyRepository(SpotifyApi(SpotifyApiCredentials(
          'fb1f9d3d114a4620bca1cd14676d4d0a',
          '5c18372d8201494ca326c3dc7d62dd15',
        )));

  String get authToken => 'Bearer ${_tokenStorage.spotifyToken}';
}
