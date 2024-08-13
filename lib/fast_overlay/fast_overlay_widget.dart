import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FastOverlayWidget extends StatefulWidget {
  const FastOverlayWidget({super.key});

  @override
  State<FastOverlayWidget> createState() => _FastOverlayWidgetState();
}

class _FastOverlayWidgetState extends State<FastOverlayWidget> {
  bool visible = !kDebugMode;

  @override
  Widget build(BuildContext context) {
    if (visible) {
      return const SizedBox.shrink();
    } else {
      return const SizedBox.shrink();
    }
  }
}
