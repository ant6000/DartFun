class Test {
  int? a;
  String? str;
  get getA => a;
 set setA( a) => this.a = a;

  get getStr => str;
 set setStr( str) => this.str = str;

  test(int x, String s) {
    a = x;
    str = s;
  }

}
