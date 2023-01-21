// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText({super.key,
    this.color = const Color(0xff332d2b),
    this.size = 20,
    this.overflow = TextOverflow.ellipsis, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size
      ),
    );
  }
}