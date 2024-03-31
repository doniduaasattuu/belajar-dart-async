// Future<String> sayHello(String name) {
//   return Future.value('Hello $name');
// }

Future<String> sayHello(String name) async {
  return 'Hello $name';
}

void main(List<String> args) {
  sayHello('Doni').then((value) => print(value));
  print('Done');
}
