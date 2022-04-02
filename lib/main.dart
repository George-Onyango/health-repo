import 'package:flutter/material.dart';
import 'package:health_app/Routes/routes.dart';
import 'package:health_app/Screens/Appbar.dart';

void main() {
  runApp( MyApp(router: AppRouter(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key, required this.router }) : super(key: key);

  final AppRouter? router;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  ThemeData(backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}