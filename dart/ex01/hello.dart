import 'dart:io';

void main() {
  print('What is your name?');

  // String? because the value being returned from readLineSync may be null
  //  https://api.dart.dev/stable/2.19.4/dart-io/Stdin/readLineSync.html
  String? name = stdin.readLineSync();

  print('Hello ${name}');
}
