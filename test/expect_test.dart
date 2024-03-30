import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

String sayHello(name) {
  return 'Hello $name';
}

void main() {
  test('sayHello()', () {
    var response = sayHello('Dart');
    expect(response, 'Hello Dart');
  });
}
