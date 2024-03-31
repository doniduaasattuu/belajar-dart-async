Future<String> sayHello(String name) {
  return Future.error(Exception('Ups'));
}

void main(List<String> args) {
  sayHello('Doni')
      .then((value) => print(value)) // try
      .catchError(
          (error) => print('Error with message: ${error.message}')) // catch
      .whenComplete(() => print('All done')); // finally

  print('Done');
}
