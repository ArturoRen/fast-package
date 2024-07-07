extension FastStringExtension on Object? {
    /// 是否是电话号码
  T nullSafe<T>({T? value}){
    if(this != null && runtimeType == T) return this as T;
    switch(T){
      case String: return (value??"") as T;
      case int: return (value??0) as T;
      case double: return (value??0.0) as T;
      case bool: return (value??false) as T;
      case List: return (value??<dynamic>[]) as T;
      case Map: return (value??<dynamic,dynamic>{}) as T;
      case Set: return (value??<dynamic>{}) as T;
      case DateTime: return (value??DateTime.now()) as T;
      case Object: return (value??Object()) as T;
      case num : return (value??0) as T;
      default: return value as T;
    }
  }
}
