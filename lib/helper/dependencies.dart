import 'package:dalyveryfood/controllers/popular_product_controller.dart';
import 'package:dalyveryfood/data/api/api_client.dart';
import 'package:dalyveryfood/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../utils/app_constarts.dart';

Future<void> init()async {

  //api
  Get.lazyPut(()=>ApiClient(appBaseUrl:  AppConstants.BASE_URL,));


  //repo
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  
  //api controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}