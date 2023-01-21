// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print, prefer_final_fields, unused_field

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food/popular_food_detail.dart';
import 'package:food_delivery_app/utils/colors.dart';

import 'widgets/big_text.dart';
import 'widgets/icon_text_widget.dart';
import 'widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double _currPageValue = 0;
  double  _scaleFactor = 0.8;
  var _height = 220;

  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }
  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //color: Colors.redAccent,
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return _buildPageItem(index);
             },
            ),
        ),
        DotsIndicator(
            dotsCount: 5,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            )
        ),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
          child: Row(
            children: [
              BigText(text: 'Popular'),
              const SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: BigText(text: '.',color: Colors.black45,size: 25,),
              ),
              const SizedBox(width: 10,),
              Container(
                padding: const EdgeInsets.only(top: 7),
                child: SmallText(text: 'Food pairing')
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => const PopularFoodDetail(),
                    )
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white38,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/ea9367e8a16f1d3e41d4a3ae9af2baff.png",
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)
                            ),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10,left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: 'Nutritious fruit meal in China'),
                                SmallText(text: 'With chaines characteristics'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
        )
      ],
    );
  }
  Widget _buildPageItem(index){
    //Matrix4 matrix = Matrix4.identity();
    /*if (index == _currPageValue.floor()){
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index == _currPageValue.floor() + 1){
      var currScale = _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }*/
    /*else if(index == _currPageValue.floor() - 1){
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }*/


    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(right: 10,left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven?const Color(0xFF69c5df):const Color(0xFF9294cc),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/ea9367e8a16f1d3e41d4a3ae9af2baff.png',
              ),
            ),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(right: 30,left: 30,bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0,5)
                  ),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 0.0,
                      offset: Offset(-5,0)
                  ),
                  BoxShadow(
                      color: Color(0xFFe8e8e8),
                      offset: Offset(3,0)
                  ),
                ]
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Chinese Side'),
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
              ),
            ),
          ),
        ),

      ],
    );
  }
}