import 'dart:io';

import 'package:dart_basics/main_menu.dart';

void createAccount() {
  String filePath = "G:/VMSL/Dart/dart_basics/lib/data.txt";
  print('##########################################################');
  print('#                    REGISTER                            #');
  print('##########################################################');
  print('           ENTER YOUR EMAIL AND PASSWORD\n');
  stdout.write('ENTER EMAIL:    ');
  String? email = stdin.readLineSync();
  stdout.write('ENTER PASSWORD: ');
  String? password = stdin.readLineSync();

  //   if(email != null && password != null) {
  //   email = email.trim();
  //   password = password.trim();
  // }

  File file = File(filePath);
  file.writeAsStringSync('$email,$password\n', mode: FileMode.append);
  print('Account Created Successfully!!');
  stdout.write('Press 0 go back to Main Menu: ');
  String? input;
  input = stdin.readLineSync();
  switch (input) {
    case '0':
      {
        main();
      }
    default:
      {
        print('invaild');
      }
      break;
  }
  // READ DATA FORM FILE
  // String contents;
  // contents = file.readAsStringSync();
  // print(contents);
}
