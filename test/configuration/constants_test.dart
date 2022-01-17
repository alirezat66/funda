import 'package:flutter_test/flutter_test.dart';

void main() {
  test('check', () {
    const a = String.fromEnvironment('FLAVOR');
    expect(a, equals('development'));
  });
}
