main(List<String> args) {
  sayHello("name");
  sayHello2("name", 15);
  sayHello3("name",height:1.99,age:14);
  sayHello4("name",height:1.99);
}

// dart中没有函数的重载 即使参数不同，方法名相同也是同一个方法
// 必选参数
void sayHello(String name) {
  print(name);
}

// 可选参数：位置可选参数/命名可选参数
// 位置可选参数:[int age,double height]
// 实参和形参使根据位置匹配的
void sayHello2(String name, [int age, double height]) {
  print(name);
  print(age);
  print(height);
}

// 命名可选参数
void sayHello3(String name, {int age, double height}) {
  print(name);
  print(age);
  print(height);
}
// 参数的默认值
// 只有可选参数才有默认值
void sayHello4(String name, {int age=10, double height}) {
  print(name);
  print(age);
  print(height);
}
