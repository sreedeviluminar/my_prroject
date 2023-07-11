import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_prroject/api%20integration%20using%20http/Screen/Home/widget/product%20tile.dart';
import 'package:my_prroject/api%20integration%20using%20http/controller/productController.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomeApi(),
  ));
}

class HomeApi extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Page"),
        ),
        body: SizedBox(child: Obx(() {
          if (productController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemCount: productController.productlist.length,
                itemBuilder: (context, index) {
                  // observable list from controller class
                  return ProductTile(productController.productlist[index]);
                });
          }
        })));
  }
}
