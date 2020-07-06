main(List<String> args) {
  // var p = Person();
  // p.name = "why";
  // p.run();
  // p.eat();
  // 级联运算符
  var p = Person()
    ..name = "why"
    ..eat()
    ..run();
}

class Person {
  String name;

  void run() {
    print("run");
  }

  void eat() {
    print("eat");
  }
}
