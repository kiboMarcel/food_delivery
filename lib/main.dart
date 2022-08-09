import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentations/pages/food/popular_food_detail.dart';
import 'presentations/pages/food/recommended_food_detail.dart';
import 'presentations/screens/main_food_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: RecommendedFoodDetail(),
    );
  }
}
