import 'package:dalyveryfood/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';
import '../models/products_apis.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<ProductsModel> _recommendedProductList = [];
  List<ProductsModel> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {

    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    //print("Response status: ${response.status}");
    if (response.statusCode == 200) {
      print("got products recommended");

      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      //print(_popularProductList);
      _isLoaded = true;
      update();
    } else {
      print("Failed to get products recommended, status code: ${response.statusCode}");
      //print("Failed to get products, status code: ${response.statusCode}");
    }
  }
}
