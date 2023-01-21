
import 'package:flutter/material.dart';
import 'small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndText({
    super.key, 
    required this.icon, 
    required this.text, 
    required this.iconColor});
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon , color: iconColor,),
        const SizedBox(width: 5,),
        SmallText(text: text)
      ],
    );
  }
}