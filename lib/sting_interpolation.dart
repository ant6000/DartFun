import 'dart:io';

void main(List<String> args) {
  String firstName = "100";
  String lastNaame = "Chakraborty";

  String fullName = firstName + lastNaame;
  stdout.write('FullName is ${fullName.toUpperCase()}');

  double b = double.parse(firstName);
  print(b + int.parse(lastNaame));
  
}
