abstract class Shape {
  double calculateArea();
}

class Rectangle extends Shape {
  double height, width;
  Rectangle(this.height, this.width);

  @override
  double calculateArea() {
    return height * width;
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double calculateArea() {
    return 3.1416 * radius * radius;
  }
}

void main(List<String> args) {
  Rectangle rectangle = Rectangle(50, 60);
  print(rectangle.calculateArea());
  Circle circle = Circle(50);
  print(circle.calculateArea());
}
