import 'package:flutter/material.dart';

class MiniPlayerWillPopScope extends StatelessWidget {
  final Widget child;
  final Future<bool> Function() onWillPop;

  const MiniPlayerWillPopScope({
    super.key,
    required this.child,
    required this.onWillPop,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: child,
    );
  }
}
