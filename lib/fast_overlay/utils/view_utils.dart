import 'package:flutter/scheduler.dart'
    show SchedulerBinding, SchedulerPhase, VoidCallback;
import 'package:flutter/widgets.dart'
    show BuildContext, Overlay, OverlayState, WidgetsBinding;

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
