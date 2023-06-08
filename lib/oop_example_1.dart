// Abstarction
abstract class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat(); //abstract method

  void sleep() {
    print('$name is Sleeping.');
  }
}
// Inherited class
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);
  @override
  void eat() {
    print('$name, a $breed dog, is eating');
  }

  void bark() {
    print('$name, a $breed dog, is barking');
  }
}

class Cat extends Animal {
  Cat(String name, int age) : super(name, age);
  @override
  void eat() {
    print('$name is eating like a cat.');
  }

  void meow() {
    print('$name is meowing');
  }
}
// Polymorphic function
void makeAnimalEat(Animal animal) {
  animal.eat();
}

void main(List<String> args) {
  Dog dog = Dog('Antor', 24, "Bangladeshi");
  dog.eat();
  dog.sleep();
  dog.bark();

  Cat cat = Cat('kitty', 25);
  cat.eat();
  cat.sleep();
  cat.meow();

  makeAnimalEat(dog);
  makeAnimalEat(cat);
}
