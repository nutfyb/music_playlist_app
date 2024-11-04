import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:music_playlist_app/src/core/init/init.dart';

final getIt = GetIt.I;
const _initializedMark = 'music_playlist_app_initialized';

void initialize({String environment = Environment.dev}) {
  final isInitialized = GetIt.I.isRegistered<bool>(
    instanceName: _initializedMark,
  );

  if (isInitialized) {
    return;
  }

  _initializeLicenses();
  _internalInitialize(environment);

  getIt.registerSingleton<bool>(true, instanceName: _initializedMark);
}

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
void _internalInitialize(String environment) {
  init(getIt, environment: environment);
}

void _initializeLicenses() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/Prompt/OFL.txt');
    yield LicenseEntryWithLineBreaks(['Prompt'], license);
  });
}
