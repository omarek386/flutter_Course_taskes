// Make a class called Shape that has property (width, height) and behavior (area), and
// then make another 2 classes called (Rectangle, Square) that extends the class
// Shape and has a property (color) and then print them. { make override on are a
// method on both 2 classes }.
// E a s y   L e a r n
// F l u t t e r   T e a m

class Shape {
  Shape({required this.width, required this.height});
  int width;
  int height;

  double area() {
    return width * height * 1.0;
  }
}

class Rectangle extends Shape {
  Rectangle({required int width, required int height, required this.color})
      : super(width: width, height: height);
  String color;

  @override
  double area() {
    return width * height * 1.0;
  }
}

class Square extends Shape {
  Square({required int width, required int height, required this.color})
      : super(width: width, height: height);
  String color;

  @override
  double area() {
    return width * height * 1.0;
  }
}
