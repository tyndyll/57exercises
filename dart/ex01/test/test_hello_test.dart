import 'dart:io' hide stdin;

import 'package:ex01/hello.dart' show getName;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class FakeStdin extends Mock implements Stdin {}

void main() {
  test('verify name is formatted', () {
    final stdin = FakeStdin();
    final testName = "Tyndyll";

    when(() => stdin.readLineSync()).thenReturn(testName);

    IOOverrides.runZoned(
      () {
        expect(getName(), equals("Hello ${testName}"));
      },
      stdin: () => stdin,
    );
  });
}
