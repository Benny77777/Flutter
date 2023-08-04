import 'dart:io';

int maxNumber() {
  int? num = int.parse(stdin.readLineSync()!);
  return num;
}

void printNum(int n) {
  for (int i = 0; i <= n; i++) {
    if (i == (n / 2).toInt()) {
      print('Half way there');
    }
    print(i);
  }
}

void main() {
  print('Enter maximum number');
  printNum(maxNumber());
}
