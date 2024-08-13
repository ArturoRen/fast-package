import 'package:flutter/scheduler.dart'
    show SchedulerBinding, SchedulerPhase, VoidCallback;
import 'package:flutter/widgets.dart'
    show
        BuildContext,
        Overlay,
        OverlayState,
        WidgetsBinding,
        Navigator,
        GlobalKey;

class ViewUtils {
  ViewUtils._();
  static void viewSafeUtil(VoidCallback callback) {
    SchedulerBinding schedulerBinding = SchedulerBinding.instance;
    if (schedulerBinding.schedulerPhase == SchedulerPhase.persistentCallbacks) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) => callback);
    } else {
      callback();
    }
  }
}

OverlayState overlay(BuildContext context) => Overlay.of(context);

BuildContext? getNavigatorContext(Navigator navigator) {
  BuildContext? context;
  if (navigator.key is GlobalKey) {
    context = (navigator.key as GlobalKey).currentContext;
  }
  return context;
}
