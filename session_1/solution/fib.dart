import 'dart:io';

int fib(n) {
  if (n == 0) {
    return 0;
  }
  if (n == 1) {
    return 1;
  }

  return fib(n - 1) + fib(n - 2);
}

void main(List<String> args) {
  print("Enter number");
  int? n = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < n; i++) {
    print(fib(i));
  }
}
