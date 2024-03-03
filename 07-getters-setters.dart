/**
 * getters setters y assert
 * 
 * Puedes capturar errores con assert para este ejemplo no quiero que el area 
 * sea menor a cero o negativo por lo que se captura en 
 * assert(side >= 0, 'side must be >= 0')
 * 
 * *******
 * La diferencia entre assert y el if del setter es que
 * setter solo
 * lo captura si se instancia directamente `mysquare.side = -2;` 
 * pero si se instancia como en `final mysquare = Square(side: -10);` no capturara el error.
 * 
 * con assert funciona al revés.
 * captura el error aca `final mysquare = Square(side: -10);`
 * pero si se "declara" directamente `mysquare.side = -2;`no
 * 
 * 
 * -------
 * Usa los 2 
 * 
 */
void main() {
  final mysquare = Square(side: 10);

  mysquare.side = -2;
  print(" area: ${mysquare.area}");
}

class Square {
  double _side;

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

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
