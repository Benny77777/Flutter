import 'dart:ffi';

double findAverage(List<int> numbers) {
  int sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  double average = findAverage(numbers);
  print('average: $average');
}
