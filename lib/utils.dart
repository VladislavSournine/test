import 'package:meta/meta.dart';

extension ObjectExt<T> on T {
  R let<R>(R Function(T value) action) => action(this);

  R map<R>(R Function(T value) mapper) => mapper(this);

  R? as<R>() => this is R ? this as R : null;
}

// ignore: avoid_annotating_with_dynamic
T? as<T>(dynamic value) => value is T ? value : null;

R? let2<R, T1, T2>(T1? v1, T2? v2, R Function(T1 v1, T2 v2) action) {
  if (v1 == null || v2 == null) {
    return null;
  }

  return action(v1, v2);
}



String hideEmail(String email) {
  if (!email.contains('@')) {
    return '@.com';
  }
  assert(email.contains('@'));

  final parts = email.split('@');
  final namePart = parts.first;
  final domainPart = parts.last;

  // print('namePart - ${namePart}');

  final halfLength = (namePart.length / 2).ceil();

  // print('halfLength - ${halfLength}');


  final visiblePart = namePart.substring(0, halfLength);

  return '$visiblePart****@$domainPart';
}



class AmountFieldValue {
  final String value;

  AmountFieldValue(this.value);

  String formatDecimals(int precision) {
    final splitValue = value.split('.');
    if (splitValue.length == 1) {
      return value;
    }
    if (precision == 0) {
      return splitValue[0];
    }

    final decimals = splitValue[1];
    final newDecimals = decimals.map((value) => cutByPrecision(value, precision));

    return '${splitValue[0]}.$newDecimals';
  }

  @visibleForTesting
  String cutByPrecision(String value, int precision) {
    if (value.length <= precision) {
      return value;
    }
    return value.substring(0, precision);
  }

  @override
  String toString() {
    return 'TradeFieldValue($value)';
  }
}

String tapByPrecision(String value, int precision) {
  if (value.length <= precision) {
    return value;
  }
  return value.substring(0, precision);
}