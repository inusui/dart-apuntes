/**
 * una lista es en []
 * las listas tienen funciones.
 * 
 * Iterable: Coleccion de elementos que se pueden listar de manera secuencial. 
 * reverseNumbers.toList(): convierte el iterable en una lista
 * 
 * set: es un listado con la diferencias que sus valores no se repiten
 * lista.where: es como un elemento.in()
 */

main(){
  final List<int> numbers = [1,2,3,4,5,5,6,6,4,7,7,8,9,10];

  print('Lista original $numbers');
  print('lengt ${numbers.length}');
  print('Primero de la lista ${numbers.first}');
    print('Eliminar duplicados y convertir en lista ${numbers.toSet().toList()}');
  print('Reverse${numbers.reversed}');

  final reverseNumbers = numbers.reversed;
  print('Iterable: $reverseNumbers');
  print('Iterable como lista: ${reverseNumbers.toList()}');
  print('Iterable como lista: ${reverseNumbers.toSet()}');


  final numberGreaterThan5 = numbers.where((element) {
    return element > 5;
  });
  print(numberGreaterThan5.toSet());

}