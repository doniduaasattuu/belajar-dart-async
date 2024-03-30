import 'package:test/test.dart';

String sayHello(name) {
  return 'Hello $name';
}

int sum(int first, int second) {
  return first + second;
}

void main() {
  test('say hello with mathcer', () {
    expect(sayHello('Eko'), endsWith('Eko'));
    expect(sayHello('Eko'), startsWith('Hello'));
    expect(sayHello('Eko'), equalsIgnoringCase('hello eko'));
    expect(sayHello('Eko'), isA<String>());
  });

  test('test sum with matcher', () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(3));
  });
}
