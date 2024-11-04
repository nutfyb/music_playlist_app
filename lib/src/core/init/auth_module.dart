import 'package:injectable/injectable.dart';
import 'package:spotify/spotify.dart';

@module
abstract class AuthModule {
  @Named('spotify_credentials')
  @singleton
  SpotifyApiCredentials get spotifyCredentials => SpotifyApiCredentials(
        'fb1f9d3d114a4620bca1cd14676d4d0a',
        '5c18372d8201494ca326c3dc7d62dd15',
      );

  @Named('spotify_api')
  @singleton
  SpotifyApi getSpotifyApi(
    @Named('spotify_credentials') SpotifyApiCredentials credentials,
  ) => SpotifyApi(credentials);
} 