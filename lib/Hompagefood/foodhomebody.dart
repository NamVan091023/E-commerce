import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodHomebody extends StatefulWidget {
  const FoodHomebody({super.key});

  @override
  State<FoodHomebody> createState() => _FoodHomebodyState();
}

class _FoodHomebodyState extends State<FoodHomebody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        itemCount: 7,
        itemBuilder: (context, position){
          return _buildPageItem(position);
    }),

    );
  }
  Widget _buildPageItem(int index){
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: index.isEven?Color(0xFF69c5df)  :Color(0xFF9294cc),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/foodsr1.png")
        )
      ),
    );
  }
}
