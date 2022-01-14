import 'dart:io';
import 'dart:math';

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

void main(List<String> args) {
  List<int> array = [];
  print("Enter the number of elements in the array ");
  num r = int.parse(stdin.readLineSync()!);
  while (r != 0) {
    array.add(int.parse(stdin.readLineSync()!));
    r -= 1;
  }

  int sum = 0;
  for (int i in array) {
    if (isprime(i)) {
      sum += i;
    }
  }
  print(isprime(sum));
}
