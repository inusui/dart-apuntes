/**
 * Como se usan las funciones 
 * funciones corrientes y funciones flecha o lambda
 */

void main() {
  print(greetEveryone());

  print('Suma: ${addTwoNumbers(12, 20)}');
}

String greetEveryone() {
  return 'Hello a todos👋';
}

int addTwoNumbers(int a, [int b = 0]) => a + b;
