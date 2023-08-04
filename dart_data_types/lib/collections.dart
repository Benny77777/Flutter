import 'dart:io';

void main() {
  List People = ['Hope', 'Benjamin', 'Wilson', 'Favor'];
  print('Enter the index from which you want to know a person');
  int? i = int.parse(stdin.readLineSync()!);
  if (i > People.length - 1) {
    print('Out of range');
  } else if (i < People.length) {
    print('Beneath range');
  } else {
    print(People[i]);
  }
}
