/**
 * Clases
 * 
 * La anotacion @override sobrescribe la función, es una buena practica colocar la notación ya que el programa funciona hasta sin ella.
 */

void main() {
  final wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  final juan = Hero(name: 'Juan');
  print(wolverine);
  print(juan);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "Sin poder"});

  // Hero(String pName, String pPower){
  //   name = pName;
  //   power = pPower;
  // }

  @override
  String toString(){
    return '${name} - ${power}';
  }
}
