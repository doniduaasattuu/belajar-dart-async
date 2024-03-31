import 'dart:async';

void main(List<String> args) {
  Timer(Duration(seconds: 2), () {
    print('Hello from timer');
  });

  print('Done');
}
