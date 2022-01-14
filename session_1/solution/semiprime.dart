import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Enter the Number');
  int? n = int.parse(stdin.readLineSync()!);
  print(issemiprime(n));
}

bool isprime(n) {
  if ((n == 2) || (n == 3)) {
    return true;
  }
  if (n % 2 == 0) {
    return false;
  }
  if (n < 9) {
    return true;
  }
  int sqrt_num = sqrt(n).toInt();
  int f = 5;
  while (f <= sqrt_num) {
    if (n % f == 0) {
      return false;
    }
    if (n % (f + 2) == 0) {
      return false;
    }
    f += 6;
  }
  return true;
}

bool issemiprime(n) {
  for (var i = 2; i < sqrt(n).toInt() + 1; i++) {
    if (n % i == 0) {
      num i1 = (n / i);
      return isprime(i) && isprime(i1);
    }
  }
  return false;
}
