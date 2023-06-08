class Person {
  String? _namee; // Private field

  String? get theName {
    return _namee;
  }

  set name(String newName) {
    _namee = newName;
  }
}

void main() {
  Person person = Person();
  person.name = 'John'; // Setter called
  print(person.theName); // Getter called and prints 'John'
}
