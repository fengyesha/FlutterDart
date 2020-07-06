main(List<String> args) {
  final p = Person("shy", 18);
  print(p.name);
  print(p.getName());
}

class Animal {
  int age;

  Animal(this.age);

  String getName() {
    return "age";
  }
}

class Person extends Animal {
  String name;

  Person(this.name, int age) : super(age);
  String getName() {
    return "name";
  }
}
