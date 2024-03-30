@Retry(3)

import 'package:test/test.dart';

void main() {
  test('test failed', () {
    expect(2, 2);
  });

  test('test success', () {
    expect(2, 2);
  }, retry: 5);
}
