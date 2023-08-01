void greetPerson(String name, {String greeting = 'Hello'}) {
  print('$greeting, $name');
}

void main(List<String> args) {
  String name = 'Benjamin';
  greetPerson(name);
}
