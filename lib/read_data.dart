import 'dart:io';

void main() {
  String filepath = 'lib/data.txt';
  File file = File(filepath);

  if (file.existsSync()) {
    List<String> lines = file.readAsLinesSync();
    lines.forEach((line) => print(line));
  } else {
    print('File not found: $filepath');
  }
}
