import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:music_playlist_app/src/features/auth/domain/models/auth_response.dart';

part 'auth_repository.g.dart';

@RestApi()
@Singleton()
abstract class AuthRepository {
  @FactoryMethod()
  factory AuthRepository(Dio dio) {
    return _AuthRepository(dio);
  }

  @POST('https://accounts.spotify.com/api/token')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/x-www-form-urlencoded',
  })
  Future<AuthResponse> authenticate({
    @Field('scope') required String? scope,
    @Field('grant_type') required String? grantType,
    @Field('code') required String? code,
    @Field('redirect_uri') required String? redirectUri,
    @Field('client_id') required String? clientId,
    @Field('client_secret') required String? clientSecret,
  });
}
