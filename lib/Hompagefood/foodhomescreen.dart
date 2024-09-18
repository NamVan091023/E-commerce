import 'package:dalyveryfood/Hompagefood/foodhomebody.dart';
import 'package:dalyveryfood/utils/colors.dart';
import 'package:dalyveryfood/widgets/big_text.dart';
import 'package:dalyveryfood/widgets/small_text.dart';
import 'package:flutter/material.dart';

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
        margin: EdgeInsets.only(top: 45, bottom: 15),
        padding: EdgeInsets.only(left: 20, right: 20),
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
              width: 45,
              height: 45,
              child: Icon(Icons.search, color: Colors.white),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.mainColor,

              ),
            )
          ],
          ),
      ),
      ),
          FoodHomebody()
        ],
    ),
    );
    
  }
}