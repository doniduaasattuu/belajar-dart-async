Future<String> firstName() async {
  return 'Eko';
}

Future<String> lastName() async {
  return 'Khannedy';
}

Future<String> sayHello(name) async {
  return 'Hello $name';
}

void main(List<String> args) {
  // TANPA MENGGUNAKAN AWAIT
  firstName().then((firstName) {
    return lastName().then((lastName) {
      var fullName = "$firstName $lastName";
      return sayHello(fullName);
    });
  }).then((response) => print(response));

  // DENGAN AWAIT
  Future<void> say() async {
    var first = await firstName();
    var last = await lastName();
    var hello = await sayHello("$first $last");
    print(hello);
  }

  say();

  print('Done');
}
