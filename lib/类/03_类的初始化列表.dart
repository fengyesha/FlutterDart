main(List<String> args) {
  var p = Person("shy");
  print(p);
  var p1 = Person("shy",age:20);
  print(p1);
}

class Person {
  final String name;
  final int age;
  final int height;

  Person(this.name,{int age,int height}):this.age = age ?? 10,this.height = height ?? 40{

  }

  @override
  String toString(){
    return "$name $age $height";
  }
}
