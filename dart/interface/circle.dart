import 'dart:math';

mixin Area {
  getArea();
}

abstract class Perimeter {
  getPerimeter();
}

class Circle extends Perimeter with Area {
  int radius;
  Circle(this.radius);

  @override
  getArea() {
    print("Area of circle is ${pow(radius, 2) * pi}");
  }

  @override
  getPerimeter() {
    print("Perimeter of circle is ${2 * pi * radius}");
  }
}
