import 'package:test/test.dart';

void main() {
  var data = 'Doni';

  group('string', () {
    setUp(() {
      print(data);
      data = 'Eko';
    });

    tearDown(() {
      print(data);
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
