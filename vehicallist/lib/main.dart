import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(VehicleApp());
}

class VehicleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vehicle List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: VehicleListScreen(),
    );
  }
}

class VehicleListScreen extends StatelessWidget {
  final CollectionReference vehicles =
  FirebaseFirestore.instance.collection('vehicles');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vehicle List')),
      body: StreamBuilder(
        stream: vehicles.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No vehicles found.'));
          }

          return ListView(
            children: snapshot.data!.docs.map((doc) {
              final data = doc.data() as Map<String, dynamic>;
              final mileage = data['mileage'];
              final age = data['age'];

              Color vehicleColor = Colors.red;
              if (mileage >= 15 && age <= 5) {
                vehicleColor = Colors.green; // Fuel-efficient & low pollution
              } else if (mileage >= 15 && age > 5) {
                vehicleColor = Colors.amber; // Fuel-efficient but old
              }

              return ListTile(
                title: Text(data['name']),
                subtitle: Text('Mileage: $mileage km/L | Age: $age years'),
                tileColor: vehicleColor,
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
