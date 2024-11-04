import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:music_playlist_app/src/features/player/player.dart';
import 'package:music_playlist_app/src/features/player/utils/utils_player.dart'
    as player_utils;
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/player_bloc.dart';

class PlayerPageWrapper extends StatelessWidget {
  final Music music;

  const PlayerPageWrapper({
    super.key,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<PlayerBloc>(),
      child: PlayerPage(music: music),
    );
  }
}

class PlayerPage extends StatefulWidget {
  final Music music;

  const PlayerPage({
    super.key,
    required this.music,
  });

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> with TickerProviderStateMixin {
  static const _tabLength = 2;
  late TabController _tabController;
  String? _currentMusicId;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabLength, vsync: this);
    _initializePlayer();
  }

  void _initializePlayer() {
    if (_currentMusicId != widget.music.id) {
      _currentMusicId = widget.music.id;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          context.read<PlayerBloc>()
            ..add(PlayerBlocEvent.started(widget.music))
            ..add(PlayerBlocEvent.updatePalette(widget.music.artworkUrl));
        }
      });
    }
  }

  void _showPlayerBottomSheet() {
    final playerBloc = context.read<PlayerBloc>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider.value(value: playerBloc),
        ],
        child: PlayerBottomSheetContent(
          tabController: _tabController,
          music: widget.music,
          isLoadingAudio: playerBloc.state.isLoadingAudio,
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(PlayerPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.music.id != widget.music.id) {
      _initializePlayer();
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final maxImgSize = width * 0.4;

    return BlocBuilder<PlayerBloc, PlayerBlocState>(
      builder: (context, state) {
        return Miniplayer(
          minHeight: player_utils.playerMinHeight,
          maxHeight: screenHeight,
          elevation: 4,
          builder: (height, percentage) {
            final progressIndicator = LinearProgressIndicator(
              value: state.duration.inMilliseconds > 0
                  ? state.position.inMilliseconds / state.duration.inMilliseconds
                  : 0.0,
            );

            return PlayerContent(
              height: height,
              percentage: percentage,
              screenHeight: screenHeight,
              width: width,
              maxImgSize: maxImgSize,
              progressIndicator: progressIndicator,
              music: widget.music,
              duration: state.duration,
              position: state.position,
              isPlaying: state.isPlaying,
              onPlayPause: () => context.read<PlayerBloc>().add(
                    const PlayerBlocEvent.togglePlayPause(),
                  ),
              onShowBottomSheet: _showPlayerBottomSheet,
              onSeek: (value) => context.read<PlayerBloc>().add(
                    PlayerBlocEvent.seek(value),
                  ),
              backgroundColor: state.backgroundColor,
              isLoadingAudio: state.isLoadingAudio,
              isLooping: state.isLooping,
              onToggleLoop: () => context.read<PlayerBloc>().add(
                const PlayerBlocEvent.toggleLoop(),
              ),
            );
          },
        );
      },
    );
  }
}
