// ignore_for_file: avoid_print, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'food_page_body.dart';
import 'widgets/big_text.dart';
import 'widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    //print("Current height is " + MediaQuery.of(context).size.height.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          children: [
            Container(
              //margin: const EdgeInsets.only(top: 45,bottom: 15,left: 15,right: 15),
              padding: const EdgeInsets.only(top: 15,bottom: 15,left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: 'Bangladesh',color: AppColors.mainColor,),
                    Row(
                      children: [
                        SmallText(text: 'Narsingdi',color: Colors.black54,),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.search),color: Colors.white,
                    ),
                  ),
                )
              ],
             )
            ),
            const Expanded(
                child: SingleChildScrollView(
                    child: FoodPageBody()
                )
            ),
            
          ],
        )
      ),
    );
  }
}
