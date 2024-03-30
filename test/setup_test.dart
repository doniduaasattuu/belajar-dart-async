import 'package:test/test.dart';

void main() {
  var data = 'Doni';

  group('string', () {
    setUp(() {
      data = 'Eko';
    });

    test('first', () {
      data = "$data Kurniawan";
      expect(data, equals('Eko Kurniawan'));
    });

    test('second', () {
      data = "$data Khannedy";
      expect(data, equals('Eko Khannedy'));
    });
  });
}
