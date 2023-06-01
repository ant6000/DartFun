import 'dart:io';

void main(List<String> args) {
  String FirstName = "100";
  String LastNaame = "Chakraborty";

  String FullName = FirstName + LastNaame;
  stdout.write('FullName is ${FullName.toUpperCase()}');

  double b = double.parse(FirstName);
  print(b + int.parse(FirstName));
  
}
