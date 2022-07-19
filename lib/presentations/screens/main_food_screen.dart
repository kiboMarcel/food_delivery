import 'package:flutter/material.dart';
import 'package:food_delivery/presentations/pages/food_page_body.dart';

import '../../utils/colors.dart';
import '../widgets/big_text.dart';

class MainFoodScreen extends StatefulWidget {
  MainFoodScreen({Key? key}) : super(key: key);

  @override
  State<MainFoodScreen> createState() => _MainFoodScreenState();
}

class _MainFoodScreenState extends State<MainFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BigText(text: 'Togo'),
                        Row(
                          children: [
                            Text('City'),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                            ),
                          ],
                        )
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.mainColor),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ]),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}