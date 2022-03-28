import 'package:flutter/material.dart';
import 'package:health_app/Screens/medicine.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const PharmacyScreen(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF7A08FA),
              Color(0xFFAD3BFC),
            ],
          ),
        ),
      ),
      elevation: 0.0,
      bottomOpacity: 0.0,
    );
  }
}
