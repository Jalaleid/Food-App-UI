import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/home/widgets/app_column.dart';
import 'package:food_delivery_app/pages/home/widgets/app_icons.dart';
import '../../utils/colors.dart';
import '../home/widgets/big_text.dart';
import 'package:readmore/readmore.dart';

class PopularFoodDetail extends StatelessWidget {

  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: 355,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/ea9367e8a16f1d3e41d4a3ae9af2baff.png',
                  ),
                ),
              ),
            )
          ),
          Positioned(
            top: 45,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: const AppIcon(
                        icon: Icons.arrow_back
                    )
                ),
                const AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320,),
            child: Container(
              padding: const EdgeInsets.only(top: 20,bottom: 20,right: 30,left: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text:'Chinese Side'),
                  const SizedBox(height: 20,),
                  BigText(text: 'Introduce')
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 500,left: 20,right: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Positioned(
                child: ReadMoreText(
                  'At Article, we’re all about great style. Think sleek modular sofas, anything-but-basic beds, smart sideboards, and more — all designed with premium quality and comfort in mind. It’s contemporary furniture meets unparalleled value. Nice, right? At Article, we’re all about great style. Think sleek modular sofas, anything-but-basic beds, smart sideboards, and more — all designed with premium quality and comfort in mind. It’s contemporary furniture meets unparalleled value. Nice, right?',
                  trimLines: 3,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.mainColor),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.mainColor),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius:const  BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.remove,color:Colors.grey[500]),
                  const SizedBox(width: 10,),
                  BigText(text: '0'),
                  const SizedBox(width: 10,),
                  Icon(Icons.add ,color: Colors.grey[500],)
                ],
              ),

            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.mainColor
              ),
              child: BigText(text: '\$10 | Add to cart', color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}