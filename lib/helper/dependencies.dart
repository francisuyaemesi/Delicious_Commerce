import 'package:delicious_commerce/controllers/cart_controller.dart';
import 'package:delicious_commerce/controllers/popular_product_controller.dart';
import 'package:delicious_commerce/controllers/recommended_product_controller.dart';
import 'package:delicious_commerce/data/api/api_client.dart';
import 'package:delicious_commerce/data/repository/cart_repo.dart';
import 'package:delicious_commerce/data/repository/popular_product_repo.dart';
import 'package:delicious_commerce/data/repository/recommended_product_repo.dart';
import 'package:delicious_commerce/utils/app_constants.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
