import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(

                    "assets/images/foodsrr.png"
                    )
                  )
                ),
              ),

            )
          ],
        )
    );

  }
}
