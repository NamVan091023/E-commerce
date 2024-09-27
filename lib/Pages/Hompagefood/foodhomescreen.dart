
import 'package:dalyveryfood/utils/colors.dart';
import 'package:dalyveryfood/widgets/big_text.dart';
import 'package:dalyveryfood/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../../utils/dimension.dart';

import 'foodhomebody.dart';

class HomeFoodmain extends StatefulWidget {
  const HomeFoodmain({super.key});

  @override
  State<HomeFoodmain> createState() => __HomeFoodmainState();
}

class __HomeFoodmainState extends State<HomeFoodmain> {
  @override
  Widget build(BuildContext context) {
    print("current height is "+ MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          Container(

      child: Container(
        margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
        padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(text: "Viet Nam", color: AppColors.mainColor,),
              Row(
                children: [
                  SmallText(text: "Ha Noi", color: Colors.black54,),
                  Icon(Icons.arrow_drop_down_rounded)
                ],
              )


              ],
            ),
            Container(
              width: Dimensions.height45,
              height: Dimensions.height45,
              child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: AppColors.mainColor,

              ),
            )
          ],
          ),
      ),
      ),
          Expanded(child: SingleChildScrollView(
            child: FoodHomebody(),
          ))
        ],
    ),
    );
    
  }
}