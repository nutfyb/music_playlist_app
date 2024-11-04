import 'package:flutter/material.dart';
import 'dart:math' as math;

class BackDropTemplate extends StatefulWidget {
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontHeader;
  final double frontPanelOpenHeight;
  final double frontHeaderHeight;
  final bool frontHeaderVisibleClosed;
  final EdgeInsets frontPanelPadding;
  final ValueNotifier<bool> panelVisible;
  const BackDropTemplate({
    super.key,
    required this.frontLayer,
    required this.backLayer,
    this.frontPanelOpenHeight = 0.0,
    this.frontHeaderHeight = 48.0,
    this.frontPanelPadding = const EdgeInsets.all(0.0),
    this.frontHeaderVisibleClosed = true,
    required this.panelVisible,
    required this.frontHeader,
  });

  @override
  State<BackDropTemplate> createState() => _BackDropTemplateState();
}

class _BackDropTemplateState extends State<BackDropTemplate>
    with SingleTickerProviderStateMixin {
  final _backdropKey = GlobalKey(debugLabel: 'Backdrop');
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      // value of 0 hides the panel; value of 1 fully shows the panel
      value: (widget.panelVisible.value) ? 1.0 : 0.0,
      vsync: this,
    );

    // Listen on the toggle value notifier if it's not null

    widget.panelVisible.addListener(_subscribeToValueNotifier);

    // Ensure that the value notifier is updated when the panel is opened or closed
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.panelVisible.value = true;
      } else if (status == AnimationStatus.dismissed) {
        widget.panelVisible.value = false;
      }
    });
  }

  void _subscribeToValueNotifier() {
    if (widget.panelVisible.value != _backdropPanelVisible) {
      _toggleBackdropPanelVisibility();
    }
  }

  /// Required for resubscribing when hot reload occurs
  @override
  void didUpdateWidget(BackDropTemplate oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.panelVisible.removeListener(_subscribeToValueNotifier);
    widget.panelVisible.addListener(_subscribeToValueNotifier);
  }

  @override
  void dispose() {
    _controller.dispose();
    widget.panelVisible.dispose();
    super.dispose();
  }

  bool get _backdropPanelVisible =>
      _controller.status == AnimationStatus.completed ||
      _controller.status == AnimationStatus.forward;

  void _toggleBackdropPanelVisibility() =>
      _controller.fling(velocity: _backdropPanelVisible ? -2.0 : 2.0);

  double get _backdropHeight {
    final RenderBox renderBox =
        _backdropKey.currentContext!.findRenderObject()! as RenderBox;
    return renderBox.size.height;
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (!_controller.isAnimating) {
      _controller.value -= details.primaryDelta! / _backdropHeight;
    }
  }

  void _handleDragEnd(DragEndDetails details) {
    if (_controller.isAnimating ||
        _controller.status == AnimationStatus.completed) return;

    final double flingVelocity =
        details.velocity.pixelsPerSecond.dy / _backdropHeight;
    if (flingVelocity < 0.0) {
      _controller.fling(velocity: math.max(2.0, -flingVelocity));
    } else if (flingVelocity > 0.0) {
      _controller.fling(velocity: math.min(-2.0, -flingVelocity));
    } else {
      _controller.fling(velocity: _controller.value < 0.5 ? -2.0 : 2.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final panelSize = constraints.biggest;
      final closedPercentage = widget.frontHeaderVisibleClosed
          ? (panelSize.height - widget.frontHeaderHeight) / panelSize.height
          : 1.0;
      final openPercentage = widget.frontPanelOpenHeight / panelSize.height;

      final panelDetailsPosition = Tween<Offset>(
        begin: Offset(0.0, closedPercentage),
        end: Offset(0.0, openPercentage),
      ).animate(_controller.view);

      return Container(
        key: _backdropKey,
        child: Stack(
          children: <Widget>[
            widget.backLayer,
            SlideTransition(
                position: panelDetailsPosition,
                child: Padding(
                  padding: widget.frontPanelPadding,
                  child: Material(
                    elevation: 12.0,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onVerticalDragUpdate: _handleDragUpdate,
                          onVerticalDragEnd: _handleDragEnd,
                          onTap: _toggleBackdropPanelVisibility,
                          child: SizedBox(
                              height: widget.frontHeaderHeight,
                              child: widget.frontHeader),
                        ),
                        const Divider(
                          height: 1.0,
                        ),
                        Expanded(
                          child: widget.frontLayer,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      );
    });
  }
}
