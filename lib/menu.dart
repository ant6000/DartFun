import 'dart:io';

void main() {
  bool isRunning = true;
  int selectedOption = 0;

  while (isRunning) {
    printMenu(selectedOption);

    // Capture user input
    stdout.write('Enter your choice: ');
    dynamic input = stdin.readLineSync();

    if (input.isNotEmpty) {
      var option = int.tryParse(input);
      if (option != null && option >= 1 && option <= 4) {
        selectedOption = option;

        switch (selectedOption) {
          case 1:
            print('You selected Option 1');
            break;
          case 2:
            print('You selected Option 2');
            break;
          case 3:
            print('You selected Option 3');
            break;
          case 4:
            isRunning = false;
            break;
        }
      } else {
        print('Invalid choice. Please try again.');
      }
    }

    print('\n');
  }

  print('Goodbye!');
}

void printMenu(int selectedOption) {
  print('\x1B[2J\x1B[0;0H'); // Clear console screen

  // Menu options
  print('Menu:');
  print(selectedOption == 1 ? '-> 1. Option 1' : '   1. Option 1');
  print(selectedOption == 2 ? '-> 2. Option 2' : '   2. Option 2');
  print(selectedOption == 3 ? '-> 3. Option 3' : '   3. Option 3');
  print(selectedOption == 4 ? '-> 4. Exit' : '   4. Exit');
}
