import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app/constants/colors.dart';

class ItemGroup extends StatelessWidget {
  const ItemGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            height: size.height * .1,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  kPurpleGradient2,
                  kPurpleGradient,
                ],
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/angle-left.svg"),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: kTextColor.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
