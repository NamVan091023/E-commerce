import 'package:dalyveryfood/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../models/products_apis.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductsModel> _popularProductList = [];
  List<ProductsModel> get popularProductList => _popularProductList;


  bool _isLoaded = false;
  bool get isLoaded =>_isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    //print("Response status: ${response.status}");
    if (response.statusCode == 200) {

      print("got products recommended");

      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
        //print(_popularProductList);
      _isLoaded=true;
      update();
    } else {
      print("Failed to get , status code: ${response.statusCode}");

    }
  }
}
