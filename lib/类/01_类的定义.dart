// dart 支持函数式编程
// 但是大部分情况下还是面向对象的开发
main(List<String> args) {
  var p = Person("shy",18);
}
class Person {
  String name;
  int age;

// Person(String name, int age){
//   this.name = name;
//   this.age = age;
// }
  Person(this.name,this.age);
}
