@OnPlatform({'mac-os': Skip('this test is not working in windows')})

import 'package:test/test.dart';

int sum(int first, int second) => first + second;

void main() {
  group('test sum()', () {
    test('positive', () {
      expect(sum(10, 10), equals(20));
    });
    test('negative', () {
      expect(sum(10, -5), equals(5));
    }, onPlatform: {'windows': Skip('This test is not working in windows')});
  });
}
