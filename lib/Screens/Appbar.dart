import 'package:flutter/material.dart';
import 'package:health_app/Screens/medicine.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  PharmacyScreen(),
    );
  }
}
