import 'package:flutter_test/flutter_test.dart';
import 'package:sample/user.dart';

void main() {
  test('User test', () {
    var user = User();

    var name = user.getName();

    expect(name, equals('Christoph'));
  });
}
