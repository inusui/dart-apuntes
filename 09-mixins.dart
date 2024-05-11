/**
 * Mixins
 * 
 * clases que implementen ciertas implementaciones únicas que se heredan.
 * 
 * Se crear para evitar duplicidad de codigo, en el aspecto de:
 * * Implementaciones similares se pueden agrupar y extender a una sola funcionalidad.
 * * Como por ejemplo el pez volador es un nadador y un volador. implementa 2 funcionalidades en una. 
 * 
 * --------------- Ejemplo IRL ---------------
 * Digamos que estoy implementando un mapper de cuentas. 
 * * las cuentas tienen tarjetas (las tarjetas son una clase que extiende de Client)
 * * Client tiene: name, id
 * * cuentas extends Client with tarjeta
 * ? Osea que al usar cuentas, tendras toda la data del cliente y de las tarjetas. 
 *  
 */

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print('Volando');
}

mixin class Caminante {
  void caminar() => print('Caminando');
}

mixin class Nadador {
  void nadar() => print('Nadador');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final gato1 = Gato();
  gato1.caminar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.nadar();
  namor.caminar();
  namor.volar();
}
