main(List<String> args) {
  var p = Person.withNameAgeHeight("shy", 18, 1.99);
  print(p.toString());
  dynamic obj = "why";
  print(obj.substring(1));
  var p2 = Person.fromMap({'name': 'kobe', 'age': 30});
  print(p2.toString());
}

class Person {
  String name;
  int age;
  double height;
  Person(this.name, this.age, {this.height});
  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);
  // 比如开发中，我们需要经常将一个Map转成对象，可以提供如下的构造方法
  Person.fromMap(Map<String, Object> map) {
    this.name = map['name'];
    this.age = map['age'];
  }

  @override
  String toString() {
    return "$name $age $height";
  }
}
