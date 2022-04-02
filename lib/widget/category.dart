import 'package:flutter/material.dart';
import 'package:health_app/Screens/categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Headache(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Suppliments(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Infants(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Cough(),
          )
        ],
      ),
    );
  }
}
