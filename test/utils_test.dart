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
}