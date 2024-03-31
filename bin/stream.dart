import 'dart:async';

Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return "$i : genap";
    } else {
      return "$i : ganjil";
    }
  });
}

void main(List<String> args) {
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event);
  });
  listen.onData((data) {
    print("Stream subscribtion : $data");
  });
  listen.onDone(() {
    print("Stream subscribtion done");
  });

  // TIDAK BISA DI SUBSCRIBE LEBIH DARI SATU SUBSCRIBER
  // Bad state: Stream has already been listened to.
  // StreamSubscription<String> listen2 = flow.listen((event) {
  //   print(event);
  // });
}
