import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color color;
  final String text;
  final double fontSize;
  const CustomContainer({super.key, this.height, this.width, required this.color, required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      child: Text(text,style: TextStyle(fontSize: fontSize),),
    );
  }
}
