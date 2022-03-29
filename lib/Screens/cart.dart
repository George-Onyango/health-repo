import 'package:flutter/material.dart';
import 'package:health_app/Screens/Appbar.dart';
import 'package:health_app/constants/String.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
            fontFamily: "Proxima Nova",
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [],
      ),
    );
  }
}
