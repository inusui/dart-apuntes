/**
 * 
 * Clases Abstractas
 * 
 * Los enums no terminan en ; es como una especie de json o enums de java. 
 *
 *  Extends: extiende de otra clase, para el caso de WindPlan extiende de EnergyPlants.
 *          hereda todo de la clase extendida, hasta el constructor.
 * 
 * 1: La clase debe ser igual que el constructor.
 *      @override: porque estoy sobrescribiendo  una función.
 * 
 * 2: Esta usa el método de energyPlant, si energyPlant cambia o se le agregan 
 *    otros tipos de energia el metodo de chargePhone no se vera afectado. 
 * 
 */

main() {
  //
  final windPlant = WindPlant(initialEnergy: 100);

  print('energy left in windPlant: ${chargePhone(windPlant)}');
}

//2.
double chargePhone(EnergyPlant energy) {
  if (energy.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return energy.energyLeft - 10;
}

enum EnergyType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  EnergyType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount) {
    //throw UnimplementedError(); //Para que al Extender la clase abstracta no marque el error.
  }
}

// Extends o Implements
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: EnergyType.wind);

  // 1
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}
