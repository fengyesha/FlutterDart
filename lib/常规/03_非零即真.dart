main(List<String> args) {
  var flag = "adb";
  // 注意: Dart中不能判断非0即真, 或者非空即真
// Dart的类型安全性意味着您不能使用if(非booleanvalue)或assert(非booleanvalue)之类的代码。
// 错误的写法
  if (flag) {
    print("执行代码");
  }
}