main(List<String> args) {
  final p = SuperMan();
  p.runing();
}

// 混入的语法：1.在定义混入的类时，不能用class，要用mixni
// 2.用with混入
// 方法的优先级由高到低是自己的，混入的，父类的
mixin Runner {
  void runing() {
    print("runing");
  }
}

mixin Flyer {
  void flying() {
    print("flying");
  }
}

class Animal {
  void runing() {
    print("Animal runing");
  }
  void eating() {
    print("eating");
  }
}

class SuperMan extends Animal with Runner, Flyer {
  // @override
  void eating() {
    super.eating();
  }
  // @override
  // void runing() {
  //   print("SuperMan runing");
  // }
  void flying() {}
}
