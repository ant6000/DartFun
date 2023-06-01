import 'dart:io';
import 'package:dart_basics/main_menu.dart';

void services() {
  var input;
  print('[1] Deposit money');
  print('[2] Withdraw money');
  print('[3] Transfer money');
  print('[4] Check Balance');
  print('Enter any key to go back Main Menu');
  stdout.write('Enter your Input: ');
  input = stdin.readLineSync();

  switch (input) {
    case '1':
      {
        print('Enter the ammount of money to be Deposit: ');
      }
      break;
    case '2':
      {
        print('Enter the ammount of money to be Withdraw: ');
      }
      break;
    case '3':
      {
        print('Enter the ammount of money to be Transfer: ');
      }
      break;
    case '4':
      {
        print('Enter the ammount of money to be deposit: ');
      }
      break;

    default:
      {
        main();
      }
      break;
  }
}
