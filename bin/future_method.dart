// SUCCESS
Future<String> sayHello(name) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hello $name';
  });
}

Future<String> sayError(name) {
  return Future.delayed(Duration(seconds: 2), () {
    throw Error();
  });
}

Future<String> catchError(String name) {
  // return Future.delayed(Duration(seconds: 2), () {
  //   return 'Hello $name';
  // });

  return Future.delayed(Duration(seconds: 2), () {
    return Future.error(Exception('Ups'));
  });
}

void main(List<String> args) {
  sayHello('Doni').then((value) => print(value));

  sayError('Doni')
      .onError((error, stackTrace) => 'Fallback')
      .then((value) => print(value));

  catchError('Doni Darmawan')
      .whenComplete(() => print('Future done'))
      .then((value) => print(value))
      .catchError((error) => print("Error dengan message: ${error.message}"));

  print('Done');
}
