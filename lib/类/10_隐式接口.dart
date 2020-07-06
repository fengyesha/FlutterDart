main(List<String> args) {
  final p = SuperMan();
  p.runing();
}

// dart中没有哪一个关键字是来定义接口的
// 没有这些关键词inerface/protocol
// 默认情况下所有的类都是隐式接口
// dart只支持单继承
// 当我们将一个类当做接口使用时，那么实现这个接口的类，必须实现这个接口中所有方法
class Runner {
  void runing() {
    print("runing");
  }
}

class Flyer {
  void flying() {}
}

class Animal {
  // void runing() {
  //   print("Animal runing");
  // }
  void eating() {
    print("eating");
  }
}

class SuperMan extends Animal implements Runner, Flyer {
  // @override
  void eating() {
    super.eating();
  }

  // @override
  // void runing() {
  //   print("superman runing");
  // }
  void runing() {}
  void flying() {}
}
