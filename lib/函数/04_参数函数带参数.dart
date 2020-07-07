main(List<String> args) {
  test(3,2,foo);
  var demo1 = demo();
  print(demo1(10, 20));
  List<int> numbers = [3, 1, 2];
  //reduce函数实现累加，reduce函数中接收的(prev, curr) => prev + curr就是一个闭包
  print(numbers.reduce((prev, curr) => prev + curr));
}
// 封装一个函数
typedef Calculate = int Function(int num1, int num2);
// 封装一个函数，要求：传入一个函数
// test(int foo(int num1,int num2)){
test(int a, int b,Calculate calc) {
  var res = calc(a, b);
  print(res);
}

Calculate demo() {
  return (num1, num2) {
    return num1 * num2;
  };
}

int foo(int num1,int num2){
  return num1+num2;
}

