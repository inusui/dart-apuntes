/**
Los Futures son como las promesas en javascript

Esperan algo 
Puede devolver error si la peticion falla con un catchError
*** Async y Await ***
Async: se usa para establecer que una función va a devoler un "future".
      lo Transforma a código Sincrono y lineal...

*/

void main() async {
  print("Inicio");
  final value = await httpGet('');
/*   httpGet('').then((cualquierWea) {
    print(cualquierWea);
  }).catchError((onError) {
    print('Valistes porque: $onError');
  }); */
  print(value);
  print('fin');
}

Future<String> httpGet(String url) async {
/*   return Future.delayed(const Duration(seconds: 1), () {
    throw 'fíjate que nunca resulto la promesa';
    //return 'Respuesta de la peticion http';
  }); */

  await Future.delayed(const Duration(seconds: 1));
  return 'Tenemos algun valor';
}
