/**
 * Tipo de Datos Dynamic
 * 
 * Admite Nulls
 */
main(){
  dynamic errorMessage = 'Mensaje de error';
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = () => true;
  errorMessage = null;


  print(errorMessage);
}