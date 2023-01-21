import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import 'big_text.dart';
import 'icon_text_widget.dart';
import 'small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;

  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BigText(text: text),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[200]
              ),
              child: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.favorite, color: AppColors.mainColor,),
              ),
            )
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            Wrap(
              children:
                List.generate(5, (index) => const Icon(Icons.star,color: AppColors.mainColor,size: 15,)),
            ),
            const SizedBox(width: 10,),
            SmallText(text: '5.0'),
            const SizedBox(width: 10,),
            SmallText(text: '12345 comments')
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            IconAndText(
              icon: Icons.circle_sharp,
              text: 'Normal',
              iconColor: AppColors.iconColor1
            ),
            IconAndText(
              icon: Icons.location_on,
              text: '1.7Km',
              iconColor: AppColors.mainColor
            ),
            IconAndText(
              icon: Icons.access_time_rounded,
              text: '32min',
              iconColor: AppColors.iconColor2
            ),
          ],
        )
      ],
    );
  }
}