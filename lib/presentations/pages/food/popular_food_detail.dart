import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

import '../../../utils/colors.dart';
import '../../widgets/app_column_widget.dart';
import '../../widgets/app_icon_widget.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expendable_text_widget.dart';
import '../../widgets/icon_and_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //Background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/food0.png"),
              )),
            ),
          ),
          //Icon widget
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.widtht20,
            right: Dimensions.widtht20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                )
              ],
            ),
          ),
          //Introduction of Food
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.popularFoodImgSize - 20,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimensions.widtht20,
                  right: Dimensions.widtht20,
                  top: Dimensions.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: 'Chinese Side',
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Introduce"),
                  //Expendable widget
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpendableTextWidget(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum .'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeighBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.widtht20,
            right: Dimensions.widtht20),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.height20,
                horizontal: Dimensions.widtht20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.height20,
                horizontal: Dimensions.widtht20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: '150F | Add To cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
