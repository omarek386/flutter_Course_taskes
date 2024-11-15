// Make a class called Car has fields (name, model, color), enter them using constructor
// with named parameters and print them.
class Car {
  Car({required this.name, required this.model, required this.color});
  String name;
  String model;
  String color;

  void printCar() {
    print("Name: $name");
    print("Model: $model");
    print("Color: $color");
  }
}
