import 'package:fast_package/use_package.dart';


/// TODO: Add description
typedef FastThrottleVoidCallback = void Function();


///
class _FastThrottleOperation {
  FastThrottleVoidCallback onExecute;
  FastThrottleVoidCallback? onAfter;
  Timer timer;
  _FastThrottleOperation({required this.onExecute,required  this.timer,this.onAfter,});
}

///
class FastThrottle {
  ///不允许外部实例化
  FastThrottle._();

  static final Map<String, _FastThrottleOperation> _operations = {};

  ///
  static bool throttle(){
    return false;
  }
}