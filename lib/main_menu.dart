import 'dart:io';

import 'package:dart_basics/create_acc.dart';
import 'package:dart_basics/login_menu.dart';
import 'package:dart_basics/services.dart';

void main() {
  String? input;
  print('##########################################################');
  print('#                     WELCOME                            #');
  print('#                       TO                               #');
  print('#                       THE                              #');
  print('#                 FUNNY FORTUNE BANK                     #');
  print('##########################################################');

  print('             ENTER 1 TO CREATE ACCOUNT');
  print('             ENTER 2 TO LOG-IN ACCOUNT');
  print('             ENTER 3 TO SEE ALL SERVICES');
  print('             ENTER 4 TO EXIT THE APPLICAION');
  stdout.write('Please Enter Your Option: ');
  input = stdin.readLineSync();

  switch (input) {
    case '1':
      {
        createAccount();
      }
      break;
    case '2':
      {
        logIn();
        print('');
        services();
      }
      break;
    case '3':
      {
        services();
      }
      break;
    case '4':
      {
        exit(1);
      }
    default:
      {
        print('Invalid Options');
      }
      break;
  }
}
