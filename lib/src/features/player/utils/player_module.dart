import 'package:injectable/injectable.dart';

@module
abstract class PlayerModule {
  @Named('player_min_height')
  double get playerMinHeight => 76.0;

  @Named('player_max_height')
  double get playerMaxHeight => 600.0;
} 