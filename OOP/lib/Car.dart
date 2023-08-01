class Car {
  String make;
  String model;
  int year;
  int mileage;

  Car(this.make, this.model, this.year, this.mileage);

  void displayInfo() {
    print('Make: $make');
    print('Model: $model');
    print('Year: $year');
    print('Mileage: $mileage');
  }

  void drive() {
    print('The car $make $model is beig driven');
  }

  void getMileage() {
    print('The current mileage is $mileage');
  }

  void testDrive(Car car) {
    car.drive();
  }
}

class ElectricCar extends Car {
  int batteryCapacity;
  int chargeLevel;

  ElectricCar(String make, String model, int year, int mileage,
      this.batteryCapacity, this.chargeLevel)
      : super(make, model, year, mileage);

  void charge(int amount) {
    if (amount < 0) {
      print('Invalid amount!');
    } else if ((chargeLevel + amount) > batteryCapacity) {
      print('Charging not possible. Exceeds battery capacity');
    } else {
      chargeLevel += amount;
      print('Car has been charged');
    }
  }

  void showBatteryStatus() {
    double percentage = (chargeLevel / batteryCapacity) * 100;
    print('Battery Percentage: $percentage%');
  }
}

void main() {
  Car car = Car('Toyota', 'Camry', 2018, 500000);
  car.displayInfo();
  car.drive();
  car.getMileage();
  ElectricCar electricCar =
      ElectricCar('Tesla', 'Model S', 2020, 1000000, 100, 55);
  electricCar.drive();
  electricCar.charge(30);
  electricCar.showBatteryStatus();
  car.testDrive(car);
  electricCar.testDrive(electricCar);
}
