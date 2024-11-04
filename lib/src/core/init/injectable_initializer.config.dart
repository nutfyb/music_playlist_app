// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:spotify/spotify.dart' as _i942;

import '../../features/auth/auth.dart' as _i430;
import '../../features/auth/bloc/auth_bloc.dart' as _i55;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/my_playlist/bloc/track_bloc.dart' as _i211;
import '../../features/my_playlist/domain/domain.dart' as _i294;
import '../../features/my_playlist/domain/repositories/spotify_repository.dart'
    as _i445;
import '../../features/my_playlist/domain/repositories/spotify_repository_service.dart'
    as _i859;
import '../../features/player/bloc/player_bloc.dart' as _i951;
import '../../features/player/utils/player_module.dart' as _i75;
import '../services/token_storage_service.dart' as _i474;
import 'auth_module.dart' as _i784;
import 'dio_module.dart' as _i1045;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  final playerModule = _$PlayerModule();
  final authModule = _$AuthModule();
  gh.factory<_i951.PlayerBloc>(() => _i951.PlayerBloc());
  gh.singleton<_i361.Dio>(() => dioModule.dio);
  gh.singleton<_i474.TokenStorageService>(() => _i474.TokenStorageService());
  gh.factory<double>(
    () => playerModule.playerMinHeight,
    instanceName: 'player_min_height',
  );
  gh.singleton<_i942.SpotifyApiCredentials>(
    () => authModule.spotifyCredentials,
    instanceName: 'spotify_credentials',
  );
  gh.singleton<_i787.AuthRepository>(
      () => _i787.AuthRepository(gh<_i361.Dio>()));
  gh.factory<double>(
    () => playerModule.playerMaxHeight,
    instanceName: 'player_max_height',
  );
  gh.factory<_i859.SpotifyRepositoryService>(
      () => _i859.SpotifyRepositoryService(
            gh<_i474.TokenStorageService>(),
            gh<_i361.Dio>(),
          ));
  gh.singleton<_i942.SpotifyApi>(
    () => authModule.getSpotifyApi(
        gh<_i942.SpotifyApiCredentials>(instanceName: 'spotify_credentials')),
    instanceName: 'spotify_api',
  );
  gh.factory<_i55.AuthBloc>(() => _i55.AuthBloc(
        gh<_i430.AuthRepository>(),
        gh<_i474.TokenStorageService>(),
      ));
  gh.factory<_i211.TrackBloc>(
      () => _i211.TrackBloc(gh<_i294.SpotifyRepositoryService>()));
  gh.singleton<_i445.SpotifyRepository>(() => _i445.SpotifyRepository(
      gh<_i942.SpotifyApi>(instanceName: 'spotify_api')));
  return getIt;
}

class _$DioModule extends _i1045.DioModule {}

class _$PlayerModule extends _i75.PlayerModule {}

class _$AuthModule extends _i784.AuthModule {}
