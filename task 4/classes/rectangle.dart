// Create a class named Rectangle with properties for _width and _height. Add getters
// named width and height. Add setters for these properties that ensure you can’t give
// negative values. Add a getter for a calculated property named area that returns the
// area of the rectangle.

class Rectangle {
  Rectangle({required double width, required double height})
      : _width = width,
        _height = height;
  double _width;
  double _height;

  double get width => _width;
  double get height => _height;

  set width(double width) {
    if (width > 0) {
      _width = width;
    }
  }

  set height(double height) {
    if (height > 0) {
      _height = height;
    }
  }

  double get area => _width * _height;
}
