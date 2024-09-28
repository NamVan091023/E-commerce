import 'package:dalyveryfood/utils/dimension.dart';
import 'package:dalyveryfood/widgets/app_column.dart';
import 'package:dalyveryfood/widgets/app_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/iconandtext.dart';
import '../../widgets/small_text.dart';

class PopularFooddetal extends StatelessWidget {
  const PopularFooddetal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.popularFoodImgSize,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/foodsrr.png"))),
          ),
        ),
        Positioned(
            top: Dimensions.height45,
            left: 0, // Ensure full screen width
            right: 0, // Set right to 0 for full width
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppIcon(icon: Icons.arrow_back_ios),
                    AppIcon(icon: Icons.shopping_cart_outlined),
                  ],
                ))),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: Colors.white),
              child: AppColumn(text: "Bún bò Huế"),
            )),

      ],
    ),);
  }
}
