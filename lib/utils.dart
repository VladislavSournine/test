String hideEmail(String email) {
  if (!email.contains('@')) {
    return '@.com';
  }
  assert(email.contains('@'));

  final parts = email.split('@');
  final namePart = parts.first;
  final domainPart = parts.last;

  print('namePart - ${namePart}');

  final halfLength = (namePart.length / 2).ceil();

  print('halfLength - ${halfLength}');


  final visiblePart = namePart.substring(0, halfLength);

  return '$visiblePart****@$domainPart';
}