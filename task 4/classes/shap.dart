// Create a base class, Shape, and two derived classes Rectangle, Triangle from it. In
// Shape, create two private int member width, height and a function setValues that
// takes two parameters to initialize two members.In Rectangle, create a function Area()
// that compute rectangle area, Also in Triangle create a function Area() that compute
// triangle area. In the Main( ) function, Create two objects from derived classes to call
// area function.

abstract class Shape {
  Shape({required int width, required int height}) {
    _width = width;
    _height = height;
  }

  late int _width;
  late int _height;

  void setValues(int width, int height) {
    _width = width;
    _height = height;
  }
}

class Rectangle extends Shape {
  Rectangle({required int width, required int height})
      : super(width: width, height: height);

  double Area() {
    return _width * _height * 1.0;
  }
}

class Triangle extends Shape {
  Triangle({required int width, required int height})
      : super(width: width, height: height);

  double Area() {
    return 0.5 * _width * _height;
  }
}

void main() {
  Rectangle rectangle = Rectangle(width: 5, height: 10);
  print("Rectangle area: ${rectangle.Area()}");

  Triangle triangle = Triangle(width: 5, height: 10);
  print("Triangle area: ${triangle.Area()}");
}
