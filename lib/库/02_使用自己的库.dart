// 使用相对路径导入的库，通常指自己项目中定义的其他dart文件
// 当然，你也可以用相对路径或绝对路径的dart文件来引用
// import 'lib/student/student.dart';  
// 库文件中内容的显示和隐藏
// 如果希望只导入库中某些内容，或者刻意隐藏库里面某些内容，可以使用show和hide关键字
// show关键字：**可以显示某个成员（屏蔽其他）
// hide关键字：**可以隐藏某个成员（显示其他）
// import 'lib/student/student.dart' show Student, Person;
// import 'lib/student/student.dart' hide Person; 
// 补充1：as关键词起别名
// 补充2：默认情况下导入一个库时，导入这个库所有的公共属性和方法
import 'utils.dart';
main(List<String> args) {
  // print(sum(20,50));
  print(sum(20,20));
  print(dateFormat());
}

int sum(int num1, int num2){
  return num1+num2*2;
}