/*
 * Comentarios 
 */
main(){

  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor']; //  final  abilities = <String>['impostor'];
  final List<String> sprites = ['ditto/front.png', 'ditto/back.png']; //  final  abilities = <String>['impostor'];


  print("""
$pokemon, tiene $hp por tanto su valor de vida esta en $isAlive
tiene las habilidades: $abilities

$sprites
""");

}
/**
 * Clase 1 
 * 
  //String myName = "Inusui";
  final myName = "Inusui";
 
  
  print("Hola $myName");
  print("Hola con upper case ${myName.toUpperCase()}");
  print("Contando ${ 1 + 5 }");

 */