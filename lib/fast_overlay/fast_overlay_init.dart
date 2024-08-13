import 'package:fast_package/fast_overlay/fast_overlay_widget.dart';
import 'package:fast_package/fast_overlay/fasy_overlay_proxy.dart';
import 'package:fast_package/fast_overlay/utils/utils.dart';
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
    init();
    super.initState();
  }

  //初始化
  void init() {
    try {
      BuildContext? context;
      if (widget.child is Navigator) {
        context = getNavigatorContext(widget.child as Navigator);
      } else if (widget.child is FocusScope) {
        var focusScope = widget.child as FocusScope;
        if (focusScope.child is Navigator) {
          context = getNavigatorContext(focusScope.child as Navigator);
        }
      }
      FastOverlayProxy.contextNavigator = context;
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  void didUpdateWidget(covariant FastOverlayInit oldWidget) {
    init();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          //页面widget
          widget.child ?? const SizedBox.shrink(),

          //遮罩层单独抽离，不在一个overlay中维护
          const FastOverlayWidget(),
        ],
      ),
    );
  }
}
