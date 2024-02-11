/**
 * Mapas en dart
 * acumular varias variables en una sola. es como un objeto json
 * 
 * es un key:value como un objeto json
 * las keys pueden ser strings si asi lo desea el creador. 
 */

main() {
  final Map <String, dynamic>  Pokemon ={
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png', 
      2: 'ditto/back.png'
    }
  };

  print(Pokemon);

  //si usar mapa. aparecerá la lista de funciones propias de un mapa por ejemplo `${Pokemon.length}`
  print('Name: ${Pokemon['name']}');
  print('Sprites: ${Pokemon['sprites']}');

  // ******************** Tarea **********************
  print('Front: ${ Pokemon['sprites'][1] } ');
  print('Back: ${Pokemon['sprites'][2]}');
}
