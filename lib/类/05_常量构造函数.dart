main(List<String> args) {
  const p1 = Person("shy");
  const p2 = Person("shy");
  // 常量构造函数，他创建的对象指向同一个内存地址
  print(identical(p1,p2));
}
class Person {
  final String name;

  const Person(this.name);
}