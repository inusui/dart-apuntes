/**
 * 
 * Clases Abstractas
 * 
 * Los enums no terminan en ; es como una especie de json o enums de java. 
 * 
 */

main() {
  //
}

enum EnergyType { nuclear, wind, water }

abstract class EnergyPlants {
  double energyLeft;
  EnergyType type;

  EnergyPlants({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}
