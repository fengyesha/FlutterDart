main(List<String> args) {
  // 直接找到另外一个定义的函数传进去
  var result = test(bar);
  // 匿名函数 (参数列表){函数体}
  test(() {
    print("匿名函数被调用");
    return result;
  });
  // 箭头函数 函数体只有一行代码
test(()=>print("箭头函数被调用"));
}

// 函数可以作为另一个函数的参数
String test(Function foo) {
  var result = foo();
  print(result);
  return result;
}

String bar() {
  print("bar函数被调用");
  return "1234";
}
