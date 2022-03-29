import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/Screens/Appbar.dart';
import 'package:health_app/constants/String.dart';
import 'package:health_app/cubit/cart_cubit.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<CartCubit>(context).fetchCart();
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffAD3BFC),
                      Color(0xff7A08FA),
                    ]),
              ),
            ),
            title: const Text(
              "Cart",
              style: TextStyle(
                fontFamily: "Proxima Nova",
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            elevation: 0.0,
            bottomOpacity: 0.0,
          ),
        ),
        // Container(
        //   height: size.height*.05,
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topRight,
        //       end: Alignment.bottomLeft,
        //       colors: [
        //         Color(0xffAD3BFC),
        //         Color(0xff7A08FA),
        //       ]
        //     )
        //   ),
        // ),
      ],
    );
  }
}
