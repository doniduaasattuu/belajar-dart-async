import 'package:test/test.dart';

void main() {
  var data = 'Doni';

  group('string', () {
    setUpAll(() {
      print('Sekali di eksekusi di awal semua test');
    });

    setUp(() {
      print(data);
      data = 'Eko';
    });

    tearDown(() {
      print(data);
    });

    tearDownAll(() {
      print('Sekali di eksekusi di akhir semua test');
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
