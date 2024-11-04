import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_playlist_app/src/features/player/player.dart';

typedef MiniplayerBuilder = Widget Function(double height, double percentage);
typedef DismissCallback = void Function(double percentage);

class Miniplayer extends StatefulWidget {
  final double minHeight;
  final double maxHeight;
  final double elevation;
  final MiniplayerBuilder builder;
  final Curve curve;
  final Color? backgroundColor;
  final Duration duration;
  final ValueNotifier<double>? valueNotifier;
  final Function? onDismiss;
  final Function? onDismissed;
  final MiniplayerController? controller;

  const Miniplayer({
    Key? key,
    required this.minHeight,
    required this.maxHeight,
    required this.builder,
    this.curve = Curves.easeOut,
    this.elevation = 0,
    this.backgroundColor,
    this.valueNotifier,
    this.duration = const Duration(milliseconds: 300),
    this.onDismiss,
    this.onDismissed,
    this.controller,
  }) : super(key: key);

  @override
  State<Miniplayer> createState() => _MiniplayerState();
}

class _MiniplayerState extends State<Miniplayer> with TickerProviderStateMixin {
  late final ValueNotifier<double> heightNotifier;
  final ValueNotifier<double> dragDownPercentage = ValueNotifier(0);
  final StreamController<double> _heightController = StreamController<double>.broadcast();

  late double _dragHeight;
  late double _startHeight;
  AnimationController? _animationController;
  Function? onDismissed;
  bool dismissed = false;
  bool animating = false;
  int updateCount = 0;

  void _statusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) _resetAnimationController();
  }

  void _resetAnimationController({Duration? duration}) {
    _animationController?.dispose();
    
    _animationController = AnimationController(
      vsync: this,
      duration: duration ?? widget.duration,
    )..addStatusListener(_statusListener);
    
    animating = false;
  }

  @override
  void initState() {
    super.initState();
    
    heightNotifier = widget.valueNotifier ?? ValueNotifier(widget.minHeight);
    _resetAnimationController();
    _dragHeight = heightNotifier.value;

    if (widget.controller != null) {
      widget.controller!.addListener(controllerListener);
    }

    onDismissed = widget.onDismissed ?? widget.onDismiss;
  }

  @override
  void dispose() {
    _heightController.close();
    _animationController?.dispose();
    widget.controller?.removeListener(controllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (dismissed) return Container();

    return MiniPlayerWillPopScope(
      onWillPop: () async {
        if (heightNotifier.value > widget.minHeight) {
          _snapToPosition(PanelState.min);
          return false;
        }
        return true;
      },
      child: ValueListenableBuilder(
        valueListenable: heightNotifier,
        builder: (BuildContext context, double height, Widget? _) {
          final percentage = ((height - widget.minHeight)) / 
              (widget.maxHeight - widget.minHeight);

          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              if (percentage > 0)
                GestureDetector(
                  onTap: () => _animateToHeight(widget.minHeight),
                  child: Opacity(
                    opacity: borderDouble(
                      minRange: 0.0, 
                      maxRange: 1.0, 
                      value: percentage
                    ),
                    child: Container(color: widget.backgroundColor),
                  ),
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: height,
                  child: GestureDetector(
                    onTap: () => _snapToPosition(_dragHeight != widget.maxHeight
                        ? PanelState.max
                        : PanelState.min),
                    onPanStart: _handlePanStart,
                    onPanEnd: _handlePanEnd,
                    onPanUpdate: _handlePanUpdate,
                    child: ValueListenableBuilder(
                      valueListenable: dragDownPercentage,
                      builder: (BuildContext context, double value, Widget? child) {
                        return Opacity(
                          opacity: borderDouble(
                            minRange: 0.0,
                            maxRange: 1.0,
                            value: 1 - value * 0.8
                          ),
                          child: Transform.translate(
                            offset: Offset(0.0, widget.minHeight * value * 0.5),
                            child: child,
                          ),
                        );
                      },
                      child: Material(
                        child: Container(
                          constraints: const BoxConstraints.expand(),
                          decoration: BoxDecoration(
                            color: widget.backgroundColor ??
                                Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: widget.builder(height, percentage),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _handlePanStart(DragStartDetails details) {
    _startHeight = _dragHeight;
    updateCount = 0;

    if (animating) {
      _resetAnimationController();
    }
  }

  void _handlePanEnd(DragEndDetails details) async {
    final speed = (_dragHeight - _startHeight * _dragHeight < _startHeight ? 1 : -1) / 
        updateCount * 100;

    double snapPercentage = _getSnapPercentage(speed);
    PanelState snap = _determineSnapPosition(snapPercentage);
    _snapToPosition(snap);
  }

  double _getSnapPercentage(double speed) {
    if (speed <= 4) return 0.2;
    if (speed <= 9) return 0.08;
    if (speed <= 50) return 0.01;
    return 0.005;
  }

  PanelState _determineSnapPosition(double snapPercentage) {
    final percentageMax = percentageFromValueInRange(
      min: widget.minHeight,
      max: widget.maxHeight,
      value: _dragHeight
    );

    if (_startHeight > widget.minHeight) {
      if (percentageMax > 1 - snapPercentage) {
        return PanelState.max;
      }
    } else {
      if (percentageMax > snapPercentage) {
        return PanelState.max;
      }

      if (onDismissed != null && 
          percentageFromValueInRange(
            min: widget.minHeight,
            max: 0,
            value: _dragHeight,
          ) > snapPercentage) {
        return PanelState.dismiss;
      }
    }

    return PanelState.min;
  }

  void _handlePanUpdate(DragUpdateDetails details) {
    if (dismissed) return;

    _dragHeight -= details.delta.dy;
    updateCount++;

    _handleHeightChange();
  }

  void _handleHeightChange({bool animation = false}) {
    if (_dragHeight >= widget.minHeight) {
      _handleAboveMinHeight();
    } else if (onDismissed != null) {
      _handleBelowMinHeight(animation);
    }
  }

  void _handleAboveMinHeight() {
    if (dragDownPercentage.value != 0) {
      dragDownPercentage.value = 0;
    }

    if (_dragHeight > widget.maxHeight) return;

    heightNotifier.value = _dragHeight;
  }

  void _handleBelowMinHeight(bool animation) {
    final percentageDown = borderDouble(
      minRange: 0.0,
      maxRange: 1.0,
      value: percentageFromValueInRange(
        min: widget.minHeight, 
        max: 0, 
        value: _dragHeight
      )
    );

    if (dragDownPercentage.value != percentageDown) {
      dragDownPercentage.value = percentageDown;
    }

    if (percentageDown >= 1 && animation && !dismissed) {
      onDismissed?.call();
      setState(() => dismissed = true);
    }
  }

  void _snapToPosition(PanelState snapPosition) {
    switch (snapPosition) {
      case PanelState.max:
        _animateToHeight(widget.maxHeight);
        break;
      case PanelState.min:
        _animateToHeight(widget.minHeight);
        break;
      case PanelState.dismiss:
        _animateToHeight(0);
        break;
    }
  }

  void _animateToHeight(double height, {Duration? duration}) {
    if (_animationController == null) return;
    
    final startHeight = _dragHeight;

    if (duration != null) {
      _resetAnimationController(duration: duration);
    }

    final sizeAnimation = Tween(
      begin: startHeight,
      end: height,
    ).animate(
      CurvedAnimation(
        parent: _animationController!, 
        curve: widget.curve
      )
    );

    sizeAnimation.addListener(() {
      if (sizeAnimation.value == startHeight) return;

      _dragHeight = sizeAnimation.value;
      _handleHeightChange(animation: true);
    });

    animating = true;
    _animationController!.forward(from: 0);
  }

  void controllerListener() {
    if (widget.controller?.value == null) return;

    final controllerValue = widget.controller!.value!;
    final targetHeight = _getTargetHeight(controllerValue.height);
    
    _animateToHeight(
      targetHeight,
      duration: controllerValue.duration,
    );
  }

  double _getTargetHeight(int heightCode) {
    switch (heightCode) {
      case -1: return widget.minHeight;
      case -2: return widget.maxHeight;
      case -3: return 0;
      default: return heightCode.toDouble();
    }
  }
}

class ControllerData {
  final int height;
  final Duration? duration;

  const ControllerData(this.height, this.duration);
}

class MiniplayerController extends ValueNotifier<ControllerData?> {
  MiniplayerController() : super(null);

  void animateToHeight({double? height, PanelState? state, Duration? duration}) {
    if (height == null && state == null) {
      throw ArgumentError('Either height or state must be provided');
    }

    if (height != null && state != null) {
      throw ArgumentError('Only one of height or state can be provided');
    }

    if (height != null && height < 0) return;

    final newValue = state != null 
      ? ControllerData(state.heightCode, duration)
      : ControllerData(height!.round(), duration);

    if (value == newValue) {
      notifyListeners();
    } else {
      value = newValue;
    }
  }
}