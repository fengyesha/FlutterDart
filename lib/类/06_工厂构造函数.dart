main(List<String> args) {
  final p1 = Person.withName("shy");
  final p2 = Person.withName("shy");
  print(identical(p1,p2));
  final p3 = Person.withColor("shy");
  final p4 = Person.withColor("shy");
  print(identical(p3,p4));
}
// 工厂构造函数需要手动返回对象
// class Person {
//   String name;
//   String color;

//   Person(String name);
// }
// 工厂构造函数最大的特点：可以手动的返回一个对象
// 普通的构造函数：会自动返回创建出来的对象，不能手动的返回
// 普通构造函数和工厂构造函数的区别在于，工厂构造函数能从缓存中去取相同的对象，就是我传同一个name，可以去取内存中同一个name的对象
// 工厂构造函数多占内存，但是减少了对象的创建和销毁的过程
class Person {
  String name;
  String color;

  static final Map<String, Person> _nameCache={};
  static final Map<String, Person> _colorCache={};

  factory Person.withName(String name){
    if (_nameCache.containsKey(name)) {
      return _nameCache[name];
    }
    else{
      final p = Person(name,"default");
      _nameCache[name] = p;
      return p;
    }
  }
  factory Person.withColor(String color){
    if (_colorCache.containsKey(color)) {
      return _colorCache[color];
    }
    else{
      final p = Person("default",color);
      _colorCache[color] = p;
      return p;
    }
  }

  Person(this.name,this.color);
}