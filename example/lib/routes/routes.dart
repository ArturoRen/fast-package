import 'package:example/pages/index/example_index.dart';
import 'package:flutter/cupertino.dart';

class ExampleRoute {
  ExampleRoute._();

  static String get initRoutes => index;


  static String index = '/';
  static String detail = '/detail';

  static Map<String, Widget Function(BuildContext)> get routes => {
    index: (context) {
      return ExampleIndex();
    },
    detail: (context) => const Placeholder(),
  };
}