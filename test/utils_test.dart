import 'package:flutter_test/flutter_test.dart';
import 'package:test_drive/utils.dart';

void main() {
  group('hideEmail tests', () {
    test('Should hide half of the username', () {
      expect(hideEmail('username@example.com'), 'user****@example.com');
      expect(hideEmail('us@example.com'), 'u****@example.com');
    });

    test('Should work with different username lengths', () {
      expect(hideEmail('a@b.com'), 'a****@b.com');
      expect(hideEmail('abcdefg@h.com'), 'abcd****@h.com');
    });
  });
  group('AmountFieldValue', () {
    test('...', () {
      expect(AmountFieldValue('100').formatDecimals(3),'100');
      expect(AmountFieldValue('100.123').formatDecimals(3),'100.123');
      expect(AmountFieldValue('100.1234').formatDecimals(3),'100.123');
      expect(AmountFieldValue('100.1230').formatDecimals(3),'100.123');
      expect(AmountFieldValue('100.0001').formatDecimals(3),'100.000');
      expect(AmountFieldValue('100.01').formatDecimals(3),'100.01');
      expect(AmountFieldValue('100.').formatDecimals(0),'100');
      expect(AmountFieldValue('100.034').formatDecimals(0),'100');
    });
    });
  group('cutByPrecision', () {
    test('returns the value unchanged if its length is less than or equal to precision', () {
      final amount = AmountFieldValue('123.345542');
      expect(amount.formatDecimals(3), equals('123.345'));
    });

    test('returns the value cut to the specified precision', () {
      final amount = AmountFieldValue('123.345542');
      expect(amount.formatDecimals(0), equals('123'));
    });

    test('returns the value unchanged if precision is greater than length', () {
      final amount = AmountFieldValue('123.34');
      expect(amount.formatDecimals(5), equals('123.34'));
    });

    test('returns the value unchanged if precision is greater than length', () {
      final amount = AmountFieldValue('123.3');
      expect(amount.cutByPrecision('123',5), equals('123'));
    });

    test('...', () {
      const value = '123'; // length is 3
      const precision = 5; // precision is greater than the length

      // Act
      final amount = AmountFieldValue(value);
      final result = amount.cutByPrecision(value, precision);

      // Assert
      expect(result, equals('123'));
    });

    test('..tapByPrecision..', () {
      const value = '123';
      const precision = 5;
      final result = tapByPrecision(value, precision);
      expect(result, equals('123'));
    });

    test('..tapByPrecision2..', () {
      const value = '12312345';
      const precision = 5;
      final result = tapByPrecision(value, precision);
      expect(result, equals('12312'));
    });
  });

}