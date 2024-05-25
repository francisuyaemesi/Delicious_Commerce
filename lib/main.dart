import 'package:delicious_commerce/controllers/popular_product_controller.dart';
import 'package:delicious_commerce/controllers/recommended_product_controller.dart';
import 'package:delicious_commerce/pages/food/popular_food_detail.dart';
import 'package:delicious_commerce/pages/food/recommended_food_detail.dart';
import 'package:delicious_commerce/pages/home/main_food_page.dart';
import 'package:delicious_commerce/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delicious Commerce',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
