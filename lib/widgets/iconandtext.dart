import 'package:dalyveryfood/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:dalyveryfood/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color textColor;
  final Color iconColor;

  const IconAndText({
    super.key,
    required this.icon,
    required this.text,
    this.textColor = Colors.black,  // Default color is black
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.iconSize24,),

        SmallText(
          text: text,
          color: textColor  // Pass the text color here
        ),
      ],
    );
  }
}
