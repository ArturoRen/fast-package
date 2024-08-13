import 'package:fast_package/fast_overlay/utils/utils.dart';
import 'package:flutter/material.dart';

class FastOverlayEntry extends OverlayEntry {
  FastOverlayEntry({
    required WidgetBuilder builder,
    bool opaque = false,
    bool maintainState = false,
  }) : super(
          builder: builder,
          opaque: opaque,
          maintainState: maintainState,
        );

  @override
  void markNeedsBuild() {
    ViewUtils.viewSafeUtil(() => super.markNeedsBuild());
  }

  @override
  void remove() {
    if (!mounted) {
      return;
    }
    super.remove();
  }
}
