main(List<String> args) {
  
}

class Person {
  int age;
  String name;

  // Person(this.name,this.age);
  // 构造函数的重定向
  Person(Sting name): this._internal(name,0);
  Person._internal(this.name,this.age);
}