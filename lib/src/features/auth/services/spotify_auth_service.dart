import 'package:spotify/spotify.dart';
import 'package:url_launcher/url_launcher.dart';

class SpotifyAuthService {
  static Future<void> launchSpotifyAuth() async {
    final credentials = SpotifyApiCredentials(
      'fb1f9d3d114a4620bca1cd14676d4d0a',
      '5c18372d8201494ca326c3dc7d62dd15',
    );
    
    final grant = SpotifyApi.authorizationCodeGrant(credentials);
    final authUri = grant.getAuthorizationUrl(
      Uri.parse('your_redirect_uri_here'), // Add your redirect URI
      scopes: [
        'playlist-modify-public',
        'playlist-read-private',
        'playlist-modify-private',
        'user-read-playback-state',
        'user-modify-playback-state',
      ],
    );

    if (await canLaunch(authUri.toString())) {
      await launch(authUri.toString());
    } else {
      throw 'Could not launch Spotify authentication';
    }
  }
} 