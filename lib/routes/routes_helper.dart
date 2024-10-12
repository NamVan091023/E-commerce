import 'package:dalyveryfood/Pages/Hompagefood/foodhomebody.dart';
import 'package:dalyveryfood/Pages/food/popurlar_food_detal.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Pages/Hompagefood/foodhomescreen.dart';

class RouteHelper{
  static const String inital="/";
  static const String popularFood= "/popular-food";

  static String getPopularFood()=>'$popularFood';


  static List<GetPage> routes=[
    GetPage(name: "/", page: ()=>HomeFoodmain()),
    GetPage(name: popularFood, page: (){
      print("Món ăn phố biến được gọi");
      return PopularFoodDetail();
    })
  ];
}