import 'package:flutter/material.dart';
import 'package:health_app/constants/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset("images/image-6.jpeg"),
        Container(
          width: size.width * .5,
          alignment: Alignment.center,
          child: const Text(
            "Emzor Paracetamol",
            style: TextStyle(
              fontFamily: "Proxima Nova",
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          child: Text(
            "Table - 500mg",
            style: TextStyle(
              fontSize: 18,
              color: kTextColor.withOpacity(0.4),
            ),
          ),
        ),
      ],
    );
  }
}
