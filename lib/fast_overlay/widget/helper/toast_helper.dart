import 'package:flutter/widgets.dart';

class ToastHelper extends StatefulWidget {
  const ToastHelper({super.key, required this.child});

  final Widget child;

  @override
  State<ToastHelper> createState() => _ToastHelperState();
}

class _ToastHelperState extends State<ToastHelper> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var child = Builder(builder: (context) {
      return widget.child;
    });
    return Container(
      child: child,
    );
  }
}
