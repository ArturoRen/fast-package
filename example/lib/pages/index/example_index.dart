import 'package:flutter/material.dart';

class ExampleIndex extends StatelessWidget {
  ExampleIndex({super.key});

  final List exampleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return SizedBox();
        },
        itemCount: 10,
      ),
    );
  }
}
