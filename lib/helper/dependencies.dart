import 'package:delicious_commerce/controllers/auth_controller.dart';
import 'package:delicious_commerce/controllers/cart_controller.dart';
import 'package:delicious_commerce/controllers/popular_product_controller.dart';
import 'package:delicious_commerce/controllers/recommended_product_controller.dart';
import 'package:delicious_commerce/controllers/user_controller.dart';
import 'package:delicious_commerce/data/api/api_client.dart';
import 'package:delicious_commerce/data/repository/auth_repo.dart';
import 'package:delicious_commerce/data/repository/cart_repo.dart';
import 'package:delicious_commerce/data/repository/popular_product_repo.dart';
import 'package:delicious_commerce/data/repository/recommended_product_repo.dart';
import 'package:delicious_commerce/data/repository/user_repo.dart';
import 'package:delicious_commerce/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  // api client
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
