import 'dart:io';
  String filePath = "G:/VMSL/Dart/dart_basics/lib/data.txt";
  void registerAccount(){
  print('##########################################################');
  print('#                  REGISTER ACCOUNT                      #');
  print('##########################################################');
  stdout.write('ENTER EMAIL:    ');
  String? email = stdin.readLineSync();
  stdout.write('ENTER PASSWORD: ');
  String? password = stdin.readLineSync();

  File file = File(filePath);
  file.writeAsStringSync('$email,$password\n', mode: FileMode.append);
  String contents;
  contents = file.readAsStringSync();
  print(contents);
}