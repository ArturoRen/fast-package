import 'package:fast_package/fast_overlay/fasy_overlay_proxy.dart';
import 'package:flutter/material.dart';

class FastOverlayInit extends StatefulWidget {
  const FastOverlayInit({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  State<FastOverlayInit> createState() => _FastOverlayInitState();
}

class _FastOverlayInitState extends State<FastOverlayInit> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (context) {
              FastOverlayProxy.instance.toastContext = context;
              return widget.child ?? const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
