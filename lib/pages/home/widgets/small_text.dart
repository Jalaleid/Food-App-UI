// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:food_delivery_app/utils/colors.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  SmallText({super.key, 
    this.color = AppColors.textColor,
    required this.text,
    this.size = 12,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height
      ),
    );
  }
}