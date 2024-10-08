import 'package:dalyveryfood/data/api/api_client.dart';
import 'package:get/get.dart';

import '../../utils/app_constarts.dart';

class PopularProductRepo extends GetxService{
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});
  Future<Response> getPopularProductList() async{
    return await apiClient.getData( AppConstants.PUPULAR_URL);
  }
}