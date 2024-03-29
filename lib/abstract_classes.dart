
// Abstract base class
abstract class Vehicle {
  final int maxSpeed;
  int speed = 0;

  Vehicle([this.maxSpeed = 0]);

  void accelerate();
  void brake();
}

// Subclass of Vehicle, the abstract baseclass
class Car extends Vehicle {
  final int doors;

  Car(int maxSpeed, this.doors) : super(maxSpeed);

  @override
  void accelerate() {
    if (speed > maxSpeed) {
      speed = maxSpeed;
      return;
    }
    speed += 2;
  }

  @override
  void brake() {
    if (speed - 2 < 0) {
      speed = 0;
      return;
    }
    this.speed -= 2;
  }
}



// ----------------

abstract class PowerPlant{

  void turnOn();
}

class PowerGrid{

  List<PowerPlant> connectedPlants = [];

  addPlant(PowerPlant plant){
    connectedPlants.add(plant);
  }
}

class NuclearPlant implements PowerPlant{
  turnOn(){
    print('Im a nuclear plant turning on');
  }
}

class SolarPlant implements PowerPlant{
  turnOn(){
    print('Im a solar plant turning on');
  }
}