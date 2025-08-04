import 'dart:math';

abstract class Shape {
  int d1;

  Shape(this.d1);

  void getArea();
  display() {}
}

class Circle extends Shape {
  Circle(super.d1);

  @override
  void getArea() {
    print("Area of circle is ${pow(d1, 2) * pi}");
  }

  @override
  display() {
    print('Circle');
  }
}

class Rectangle extends Shape {
  int d2;

  Rectangle(super.d1, this.d2);

  @override
  void getArea() {
    print("Area of rectangle is ${d1 * d2}");
  }
}
