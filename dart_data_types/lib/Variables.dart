import 'dart:io';

void main() {
  print('Enter your first name');
  String? firstName = stdin.readLineSync();
  print('Enter your last name');
  String? lastName = stdin.readLineSync();
  String combinedName = '$firstName ' + ' $lastName';
  print('Full name: $combinedName');
}
