Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Hello world');
  });
}

void main(List<String> args) {
  hello();
  print('Done');
}
