import 'package:injectable/injectable.dart';

@singleton
class TokenStorageService {
  String _spotifyToken = '';

  String get spotifyToken => _spotifyToken;

  void setSpotifyToken(String token) {
    _spotifyToken = token;
  }
} 