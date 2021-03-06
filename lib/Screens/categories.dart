import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_app/Screens/cart.dart';
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
                    "Categories",
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
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 18.0, right: 18.0),
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: const [
                    Headache(),
                    Spacer(),
                    Suppliments(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Infants(),
                    Spacer(),
                    Cough(),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Headache extends StatelessWidget {
  const Headache({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: const Center(
        child: Text(
          "Headache",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.9505),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: const ExactAssetImage("images/headache.jpeg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop)),
      ),
    );
  }
}

class Suppliments extends StatelessWidget {
  const Suppliments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: const Center(
        child: Text(
          "Suppliments",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.9505),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: const ExactAssetImage("images/suppliments.jpeg"),
          colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 2, 2, 2).withOpacity(0.3),
              BlendMode.dstATop),
        ),
      ),
    );
  }
}

class Infants extends StatelessWidget {
  const Infants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: const Center(
        child: Text(
          "Infants",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.9505),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: const ExactAssetImage("images/infants.jpeg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop)),
      ),
    );
  }
}

class Cough extends StatelessWidget {
  const Cough({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      child: const Center(
        child: Text(
          "Cough",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.9505),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: const ExactAssetImage("images/cough.jpeg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.3), BlendMode.dstATop)),
      ),
    );
  }
}
