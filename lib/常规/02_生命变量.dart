main(List<String> args) {
  // 1.明确的声明
  String name = "name";
  // 2.类型推导(var,final,const)
  // 类型推导的方式虽然没有明确的指定变量类型，但是变量是有自己的明确的类型
  var age = 20;
// 2.2 final声明常量
  final height = 1.88;
// 2.3 const声明常量
  const address = "上海市";
// 2.4 final he const 的区别
// const必须赋值 常量值（编译期间需要有一个确定的值）
// final可以是通过计算、函数获取一个值（运行期间确定一个值）
  // final date1 = DateTime.now();
  // const date = "202020702";
  // final用的更多一点
  // final p1 = Person("name");
  // final p2 = Person("name");
  // // 判断对象是否一样
  // print(identical(p1,p2));
  // 在2.0之后，const可以省略
  const p1 = const Person("name");
  const p2 = Person("name");
  const p3 = Person("name2");
  print(identical(p1,p2));
  print(identical(p3,p2));
}

// class Person {
//   String name;
//   Person(String name){
//     this.name = name;
//   }
// }

class Person {
  final String name;
  const Person(this.name);
}