import 'package:get/get.dart';
import 'package:my_prroject/api%20integration%20using%20http/service/http_service.dart';

class ProductController extends GetxController {
  // .obs is for monitoring the changes in list and loading state
  var isLoading = true.obs;
  var productlist = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }
  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchProduct();
      if (products != null) {
        productlist.value = products;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
