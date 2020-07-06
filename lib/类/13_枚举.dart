// 枚举类型的注意事项:

    // 注意一: 您不能子类化、混合或实现枚举。

    // 注意二: 不能显式实例化一个枚举
main(List<String> args) {
  print(Colors.red);
// index: 用于表示每个枚举常量的索引, 从0开始.
// 不能定义它的index
  print(Colors.red.index);
  print(Colors.green.index);
  print(Colors.blue.index);

  print(Colors.values);
}

enum Colors{
  red,
  blue,
  green,
}