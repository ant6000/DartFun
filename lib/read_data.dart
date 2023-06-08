import 'dart:io';

void main() {
  String filepath = 'lib/data.txt';
  File file = File(filepath);

  if (file.existsSync()) {
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      print(line);
    }
  } else {
    print('File not found: $filepath');
  }
}
