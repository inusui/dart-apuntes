/**
 * Como se usan las funciones 
 * funciones corrientes y funciones flecha o lambda
 */

void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(12, 20)}');

  print( greetPerson(name: "Inusui"));
  print( greetPerson(name: "Venus", message: "Guau"));
}

String greetEveryone() {
  return 'Hello a todos👋';
}

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) => a + b;

//Funciones con Required y Opcionales

String greetPerson( { required name, String message = "Guenas tardes"} ){
  return "$message, $name 👋";
}
