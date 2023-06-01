import 'dart:io';

void logIn() {
  String filePath = "G:/VMSL/Dart/dart_basics/lib/data.txt";
  print('##########################################################');
  print('#                     LOGIN                              #');
  print('##########################################################');
  print('           ENTER YOUR EMAIL AND PASSWORD\n');
  stdout.write('ENTER EMAIL:    ');
  String? email = stdin.readLineSync();
  stdout.write('ENTER PASSWORD: ');
  String? password = stdin.readLineSync();

  File file = File(filePath);
  List<String> lines = file.readAsLinesSync();
  bool isAuthenticated = false;
  
  for (String line in lines) {
    List<String> userCreadentials = line.split(',');
    if (userCreadentials.length == 2 &&
        userCreadentials[0] == email &&
        userCreadentials[1] == password) {
      isAuthenticated = true;
      break;
    }
  }

  if (isAuthenticated) {
    print('Login SuccessFully!!');
  } else {
    print('Invalid Creadentials,Please Try again');
  }
}
