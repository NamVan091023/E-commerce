import 'package:flutter/cupertino.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;

  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),  // Default color value
    required this.text,
    this.size = 12,  // Default size
    this.height = 1.2, // Default height
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,  // Assign the color property here
        fontSize: size, // Assign font size
        height: height,
      ),
    );
  }
}
