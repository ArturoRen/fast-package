import 'package:fast_package/fast_overlay/fast_overlay.dart';
import 'package:flutter/material.dart';

class OverlayExampleWidget extends StatefulWidget {
  const OverlayExampleWidget({super.key});

  @override
  State<OverlayExampleWidget> createState() => _OverlayExampleWidgetState();
}

class _OverlayExampleWidgetState extends State<OverlayExampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                FastOverlay.showFastToast("909");
              },
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "dialog",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
