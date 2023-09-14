import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:my_prroject/api%20integartion%20using%20dio/service/dio_service.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import '../model/post_model.dart';

class HomeController extends GetxController {
  // RxList RxBool etc  means observable data
  RxList<PostModel> post = RxList(); // list to store data from api through model
  RxBool isLoading = true.obs;
  RxBool isListViewScrolltoDown = false.obs; // to check the list shows the last values (scrolldown)
  RxBool isIntConnected = true.obs;

  var url = "https://jsonplaceholder.typicode.com/posts";
  var itemController = ItemScrollController();

  //for checking internet connection
  isInternetConnected() async {
    isIntConnected.value = await InternetConnectionChecker().hasConnection;
  }

  //calling api an getting respose
  getposts() async {
    isInternetConnected();
    isLoading.value = true;
    var response = await DioService().getMethod(url); // calling function from service class
    if (response.statusCode == 200) {
      response.data.forEach((element) {
        post.add(PostModel.fromJson(element));
      });
      isLoading.value = false;
    }
  }

  //scroll listView to down
  ScrolltoDown() {
    itemController.scrollTo(
        index: post.length ,
        duration: Duration(seconds: 3),
        curve: Curves.bounceIn);
    isListViewScrolltoDown.value = true;
  }

  ScrollUp(){
    itemController.scrollTo(
        index: 0,
        duration: Duration(seconds: 3),
        curve: Curves.easeInCubic);
    isListViewScrolltoDown.value = false;
  }
  @override
  void onInit() {
    getposts();
    isInternetConnected();
    super.onInit();
  }
}
