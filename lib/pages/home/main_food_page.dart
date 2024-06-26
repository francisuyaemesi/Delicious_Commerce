import 'package:delicious_commerce/pages/home/food_page_body.dart';
import 'package:delicious_commerce/utils/colors.dart';
import 'package:delicious_commerce/utils/dimensions.dart';
import 'package:delicious_commerce/widgets/big_text.dart';
import 'package:delicious_commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: 'Nigeria', color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(
                            text: 'Awka',
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius15),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          // showing the body
          Expanded(child: SingleChildScrollView(child: FoodPageBody())),
        ],
      ),
    );
  }
}
