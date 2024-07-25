import 'package:flutter/material.dart';

class FastOverlayWidget extends StatefulWidget {
  const FastOverlayWidget({super.key});

  @override
  State<FastOverlayWidget> createState() => _FastOverlayWidgetState();
}

class _FastOverlayWidgetState extends State<FastOverlayWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "323",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }
}
