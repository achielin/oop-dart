class Car {
  //properties
  late String make;
  late String model;
  late int year;
  late int mileage;

  //constructor
  //Car(this.make, this.model, this.year, this.mileage);

//method to display info
  void displayInfo() {
    print('Make: $make');
    print('Model: $model');
    print('Year: $year');
    print('Mileage: $mileage');
  }
}

void main() {
  var car = Car();
  car.make = 'BMW';
  car.model = 'x5';
  car.year = 2020;
  car.mileage = 10;

  //calling the method
  car.displayInfo();
}
