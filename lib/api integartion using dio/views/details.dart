import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_prroject/api%20integartion%20using%20dio/controller/home_controller.dart';

class DetailsPage extends StatelessWidget {
  int index;
  DetailsPage({required this.index});

  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Column(
        children: [
          Text(controller.post[index].id.toString()),
          Text(controller.post[index].title),
          Text(controller.post[index].body),
        ],
      ),)
    );
  }
}
