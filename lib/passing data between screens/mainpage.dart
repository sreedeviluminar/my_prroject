import 'package:flutter/material.dart';
import 'package:my_prroject/home.dart';
import 'package:my_prroject/passing%20data%20between%20screens/dummydata.dart';
import 'detailsPage.dart';

void main() {
  runApp(MaterialApp(
    home: ProductScreen(),
    routes: {
      "second" : (context)=> ProductDetails(),
      'home'   : (context)=> HomePage(),
    },
  ));
}

class ProductScreen extends StatelessWidget {

  Map data(){
    var value;
    products.forEach((element) => value = element);
    return value;
  }

   var values = {};
  @override
  Widget build(BuildContext context) {
    values= data();
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop Me"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        ///1st way
        children: products.map((product) => ListTile(
                  leading: Image.network(product["image1"]), //here product
                  title: Text(product["name"]),
                  subtitle: Text("\$${product["price"]}"),
                  onTap: () {
                    gotoNext(context, product["id"]);
                  },
                ))
            .toList(),
        ///2nd way
        // children: List.generate(
        //     products.length,      // to fetch total length of list
        //     (index) => ListTile(
        //           leading: Image.network("${products[index]["image1"]}"),
        //           title: Text("${products[index]["name"]}"),
        //    onTap:()=> gotoNext(context,products[index]["id"]),
        //         )),
      ),
    );
  }
  void gotoNext(BuildContext context, productId) {
    Navigator.of(context).pushNamed("second",arguments: productId);
  }
}
