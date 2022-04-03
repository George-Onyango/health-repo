import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_app/constanst/colors.dart';

import 'cart.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Container(
            height: size.height * 0.2,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    kPurpleGradient2,
                    kPurpleGradient,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/angle-left.svg",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Pharmacy",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const ShoppingCart()),
                          ),
                        );
                      },
                      child: SvgPicture.asset(
                        "assets/icons/shopping-cart.svg",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset("images/image-6.jpeg"),
          Container(
            width: size.width * .5,
            alignment: Alignment.center,
            child:  Text(
              "Emzor Paracetamol\n Table - 500mg",
              style: TextStyle(
                fontFamily: "Proxima Nova",
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: kTextColor.withOpacity(0.6)
              ),
            ),
          ),
          Row(
            children: const [
    
            ],
          )
        ],
      ),
    );
  }
}
