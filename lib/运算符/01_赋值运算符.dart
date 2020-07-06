main(List<String> args) {
  // ??=
  // 当原来的变量不为空时，那么？？=不执行
  // 当原来的变量为空时，那么？？=执行赋值
  var name = "name";
  name ??= "lelei";
  print(name);
// ??
// ?? 前面的数据有值，那么就使用？？前面的数据
// ？？前面的数据为null。那么就是用后面的值
  var name2 = null;
  var temp = name2 ?? "lilei";
  print(temp);
}
