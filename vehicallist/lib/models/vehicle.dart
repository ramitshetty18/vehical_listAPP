class Vehicle {
  final String name;
  final int mileage;
  final int age;

  Vehicle({required this.name, required this.mileage, required this.age});

  factory Vehicle.fromMap(Map<String, dynamic> data) {
    return Vehicle(
      name: data['name'],
      mileage: data['mileage'],
      age: data['age'],
    );
  }
}
