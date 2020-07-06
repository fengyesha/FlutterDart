main(List<String> args) {
  // 1.定义字符串
  var string1 = 'asd';
  var string2 = "dasda";
  // 三个“内的字符串可以换行
  var string3 = """asdasd
  adasdasda
  ada""";
  // 2.字符串和表达式进行拼接
  var name = "why";
  var age = 19;
  var height = 1.99;
  // 强调：${变量}，那么{}可以省略
  var message1 = "my name is $name,age is $age,height is $height";
  var message2 = "my name is ${name},type is ${name.runtimeType}";
  print(message1);
  print(message2);
}