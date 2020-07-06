main(List<String> args) {
  final p = Person();
  // 直接访问属性
  p.name = "shy";
  print(p.name);
  // 通过getter和setter访问
  p.setName="shy1";
  print(p.getName);
}
// dart语言中没有私有，共有，保护这些关键词，但是当属性名前加了_，即代表只能在当前模块中引用,即是私有化
class Person {
  String name;

  // setter
  set setName(String name){
    this.name = name;
  }
  // String get getName{
  //   return this.name;
  // }
  String get getName => this.name;
}