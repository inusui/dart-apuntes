/**
 * 
 * Clases Abstractas
 * 
 * Los enums no terminan en ; es como una especie de json o enums de java. 
 *
 * 0.1 Extends: extiende de otra clase, para el caso de WindPlan extiende de EnergyPlants.
 *          hereda todo de la clase extendida, hasta el constructor.
 * 
 * 1: La clase debe ser igual que el constructor.
 *      @override: porque estoy sobrescribiendo  una función.
 * 
 * 2: Esta usa el método de energyPlant, si energyPlant cambia o se le agregan 
 *    otros tipos de energía el método de chargePhone no se vera afectado. 
 * 
 * 3: Implementaciones: 
 *    Funciona cuando se requiere solo implementar un método de la clase padre.
 * 
 */

main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('energy left in windPlant: ${chargePhone(windPlant, 10)}');
  print('energy left in nuclearPlant: ${chargePhone(nuclearPlant, 20)}');
}

//2.
double chargePhone(EnergyPlant energy, double energyConsume) {
  if (energy.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  energy.consumeEnergy(energyConsume);
  return energy.energyLeft;
}

enum EnergyType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final EnergyType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount) {
    //throw UnimplementedError(); //Para que al Extender la clase abstracta no marque el error.
  }
}

//0.1 Extends
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: EnergyType.wind);

  // 1
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// 3: Implements
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final EnergyType type = EnergyType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
