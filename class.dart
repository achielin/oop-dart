// class Car {
//   //properties
//   late String make;
//   late String model;
//   late int year;
//   late int mileage;

//   //constructor
//   //Car(this.make, this.model, this.year, this.mileage);

// //method to display info
//   void displayInfo() {
//     print('Make: $make');
//     print('Model: $model');
//     print('Year: $year');
//     print('Mileage: $mileage');
//   }
// }

// void main() {
//   var car = Car();
//   car.make = 'BMW';
//   car.model = 'x5';
//   car.year = 2020;
//   car.mileage = 10;

//   //calling the method
//   car.displayInfo();
// }

// The challenge is to create a program that has the following features:

// An object-oriented model that uses classes and inheritance
// A class that implements an interface
// A class that overrides an inherited method
// An instance of a class that is initialized with data from a file
// A method that demonstrates the use of a loop

// Define a base class 'Vehicle' with common properties
import 'dart:io';

class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void honk() {
    print('Honk Honk!');
  }
}

// Create a 'Car' class that inherits from 'Vehicle'
class Car extends Vehicle {
  String model;

  Car(String brand, int year, this.model) : super(brand, year);

  void displayInfo() {
    print('$year $brand $model');
  }
}

// Define an interface 'Driveable'
abstract class Driveable {
  void start();
  void stop();
}

// Implement 'Driveable' interface in 'Car' class
class Car implements Driveable {
  @override
  void start() {
    print('Car started');
  }

  @override
  void stop() {
    print('Car stopped');
  }
}

// Override the 'honk' method from the 'Vehicle' class in 'Car' class
class Car extends Vehicle {
  // Existing code

  @override
  void honk() {
    print('Beep Beep!');
  }
}

void main() {
  File carData = File('car_data.txt');
  List<String> data = carData.readAsLinesSync();

  String brand = data[0];
  int year = int.parse(data[1]);
  String model = data[2];

  Car myCar = Car(brand, year, model);
  myCar.displayInfo();
}

void main() {
  List<String> carModels = ['SUV', 'Sedan', 'Hatchback'];

  for (String model in carModels) {
    Car car = Car('Toyota', 2022, model);
    car.displayInfo();
  }
}
