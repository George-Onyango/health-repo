import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/Screens/Appbar.dart';
import 'package:health_app/Screens/cart.dart';
import 'package:health_app/Screens/medicine.dart';
import 'package:health_app/constants/String.dart';
import 'package:health_app/data/repository.dart';

class AppRouter {
  late Repository repository;

  AppRouter() {}

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => const PharmacyScreen());
      case CART:
        return MaterialPageRoute(builder: (_) => const ShoppingCart());

      case CATEGORIES:
        return MaterialPageRoute(builder: (_) => const Doliprane());
      case PRODUCT:
        return MaterialPageRoute(builder: (_) => const Paracetamol());
      default:
        return null;
    }
  }
}
