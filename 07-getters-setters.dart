void main() {
  final mysquare = Square(side: 10);

  mysquare.side = -2;
  print(" area: ${mysquare.area}");
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print("setting new value $value");

    if (value < 0) throw "Value mus be >= 0";

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
