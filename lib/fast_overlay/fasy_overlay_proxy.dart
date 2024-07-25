import 'package:flutter/widgets.dart';

class FastOverlayProxy {
  static FastOverlayProxy? _instance;
  static FastOverlayProxy get instance =>
      _instance ??= FastOverlayProxy._internal();
  FastOverlayProxy._internal();

  late BuildContext toastContext;

  void showFastOverlay() {}
}
