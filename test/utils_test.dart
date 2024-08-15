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
}