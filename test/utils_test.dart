import 'package:flutter_test/flutter_test.dart';
import 'package:test_drive/utils.dart';

void main() {
    group('Descripton by Precision', () {
      test('..byPrecision.. <', () {
        const value = 3;
        const precision = 5;
        final result = byPrecision(value, precision);
        expect(result, equals(value));
      });

      test('..byPrecision.. ==', () {
        const value = 5;
        const precision = 5;
        final result = byPrecision(value, precision);
        expect(result, equals(value));
      });

      test('..byPrecision.. >', () {
        const value = 8;
        const precision = 5;
        final result = byPrecision(value, precision);
        expect(result, equals(precision));
      });
    });

    group('Descripton by Precision 2', () {
      test('..byPrecision2.. <', () {
        const value = 3;
        const precision = 5;
        final result = byPrecision2(value, precision);
        expect(result, equals(value));
      });

      test('..byPrecision2.. ==', () {
        const value = 5;
        const precision = 5;
        final result = byPrecision2(value, precision);
        expect(result, equals(value));
      });

      test('..byPrecision2.. >', () {
        const value = 8;
        const precision = 5;
        final result = byPrecision2(value, precision);
        expect(result, equals(precision));
      });
    });
}