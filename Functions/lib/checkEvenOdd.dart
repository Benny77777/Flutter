void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('Even');
  } else {
    print('Odd');
  }
}

void main(List<String> args) {
  int num = 7;
  int num1 = 10;
  checkEvenOdd(num);
  checkEvenOdd(num1);
}
