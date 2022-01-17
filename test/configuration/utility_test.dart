import 'package:flutter_test/flutter_test.dart';
import 'package:funda_assignment/configuration/utility.dart';

void main() {
  group('test Utility', () {
    group('test moneyFormat', () {
      test('test money format for shorter than 3 digit numbers', () {
        String formattedPrice = Utility.moneyFormat(12);
        expect(formattedPrice, equals("12"));
      });
      test('test money format for equal 3 digit numbers', () {
        String formattedPrice = Utility.moneyFormat(123);
        expect(formattedPrice, equals("123"));
      });
      test('test money format for bigger 3 digit numbers', () {
        String formattedPrice = Utility.moneyFormat(1234);
        expect(formattedPrice, equals("1.234"));
      });
    });
  });
}
