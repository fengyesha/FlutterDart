main(List<String> args) {
  final p = Map();
}

// 抽象类不能实例化
// final p = Shape() 这样是错误的 但是我们可以通过工厂构造函数实现Shape的实例化
abstract class Shape {
  // 抽象类中可以写没有实现的方法，这样可以让你在继承的类中去重新实现这个方法
  int getArea();
  String getInfo() {
    return "shy";
  }

  factory Shape() {
    return null;
  }
}
// external 关键词的作用：将方法的声明和实现分离
// patch 补丁 它可以在其他地方对这个类里的某个方法进行具体的实现
// 继承抽象类后，必须实现抽象类的抽象方法
// class Rectangle extends Shape {
//   @override
//   int getArea() {
//     return 100;
//   }
// }
