Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 1), (i) => i);
}

void main(List<String> args) {
  Stream<int> numberStream = numbers();
  Stream<int> broadcastStream = numberStream.asBroadcastStream().take(5);

  // hanya bisa di subscribe 1 subscriber
  // numberStream.listen((event) => print(event));

  // bisa di subscribe oleh banyak subscriber
  broadcastStream.listen((event) => print(event));
  broadcastStream.listen((event) => print(event));
  broadcastStream.listen((event) => print(event));
  broadcastStream.listen((event) => print(event));

  print('Done');
}
