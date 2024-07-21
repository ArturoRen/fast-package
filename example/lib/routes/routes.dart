import 'package:example/pages/debounce_example/debounce_example.dart';
import 'package:example/pages/index/example_index.dart';
import 'package:flutter/cupertino.dart';

class ExampleRoute {
  ExampleRoute._();

  static String get initRoutes => index;


  static String index = '/';
  static String detail = '/detail';
  //防抖系列
  static String debounce = '/debounce';

  static Map<String, Widget Function(BuildContext)> get routes => {
    index: (context) => ExampleIndex(),
    detail: (context) => const Placeholder(),
    debounce: (context) => const DebounceExample(),
  };
}