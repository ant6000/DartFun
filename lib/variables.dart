void main() {
  // // data types
  // int a = 10;
  // double b = 10.2;
  // String str = "abc";
  // bool isRunning = false;
  // // num can hvae int and double
  // num n = 3.4;
  // print(a);
  // print(b);
  // print(str);
  // print(isRunning);
  // print(n);
  // stdout.writeln("hello antor");
  // stdout.write(' $n');

  // // variables
  // var m = 10;
  // var o = 'asdf';
  // dynamic p = 100;
  // dynamic q = "sdf";
  // q = 299;
  // final age = 29;
  // const double gravity = 9.8;

  // print(m);
  // print(o);
  // print(p);
  // print(q);
  // print(age);
  // print(gravity);

  great2();
}
// country parameter is optional because of [] brackets
void great(String name, int age, [String? country]) {
  print('Hello! $name you are $age years old and you are from $country');
}
// all age and country parameter is optional {} brackets
void great2({String? name, int? age, String? country}) {
  print('Hello! $name you are $age years old and you are from $country');
}
