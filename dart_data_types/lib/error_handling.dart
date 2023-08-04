import 'dart:io';

int askAge() {
  print('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);
  return age;
}

void checkAge(int age) {
  if (age < 18) {
    throw Exception('Too young');
  } else if (age > 99) {
    throw Exception('Too old');
  }
}

void main(List<String> args) {
  try {
    int age = askAge();
    checkAge(age);
    print('age: $age');
  } catch (e) {
    print(e.toString());
  }
}
