import 'package:flutter/widgets.dart';

class FastOverlayProxy {
  static FastOverlayProxy? _instance;
  static FastOverlayProxy get instance =>
      _instance ??= FastOverlayProxy._internal();
  FastOverlayProxy._internal();

  /// toast
  static late BuildContext toastContext;

  /// navigator
  static BuildContext? contextNavigator;

  void showFastOverlay() {}
}
