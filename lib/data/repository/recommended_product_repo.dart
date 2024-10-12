import 'package:dalyveryfood/data/api/api_client.dart';
import 'package:get/get.dart';

import '../../utils/app_constarts.dart';

class RecommendedProductRepo extends GetxService{
  final ApiClient apiClient;
  RecommendedProductRepo({required this.apiClient});
  Future<Response> getRecommendedProductList() async{
    return await apiClient.getData( AppConstants.RECOMMENDED_URL);
  }
}