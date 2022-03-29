import 'package:flutter/material.dart';
import 'package:health_app/Screens/Appbar.dart';
import 'package:health_app/Screens/medicine.dart';

class Router {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const PharmacyScreen());
      case "cart":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case "categories":
        return MaterialPageRoute(builder: (_) => const Doliprane());
      case "Product":
        return MaterialPageRoute(builder: (_) => const Paracetamol());
      default:
        return null;
    }
  }
}
