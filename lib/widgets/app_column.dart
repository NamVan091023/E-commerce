import 'package:dalyveryfood/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'big_text.dart';
import 'iconandtext.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text:  text),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
                children: List.generate(5, (index) {
              return Icon(Icons.star,
                  color: AppColors.mainColor, size: Dimensions.iconSize24);
            })),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "5", color: Colors.grey),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1000", color: Colors.grey),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comment", color: Colors.grey)
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndText(
                icon: Icons.location_pin,
                text: " 1.5 km",
                iconColor: AppColors.mainColor),
            IconAndText(
                icon: Icons.access_time_sharp,
                text: " 32 min",
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
