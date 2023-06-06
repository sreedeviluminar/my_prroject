import 'package:flutter/material.dart';
import 'package:my_prroject/passing%20data%20between%20screens/dummydata.dart';

class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // id from previous page
    final productId       = ModalRoute.of(context)?.settings.arguments;

    // fetch the first  map values from  list which satisfy the condition
    final productfromList = products.firstWhere((element) => element["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text("My WishList"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(productfromList["image2"]),
            Text(productfromList["name"]),
            Text("${productfromList["price"]}"),
            Text(productfromList["description"]),
            Text("${productfromList["rating"]}")
          ],
        ),
      ),
    );
  }
}
