import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:my_prroject/api%20integartion%20using%20dio/controller/home_controller.dart';
import 'package:my_prroject/api%20integartion%20using%20dio/utils/colors.dart';
import 'package:my_prroject/api%20integartion%20using%20dio/utils/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'details.dart';

void main() {
  runApp(GetMaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      floatingActionButton: Obx(()=> controller.isIntConnected.value? _buildFab():Container()),
      body: Obx(() => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: controller.isIntConnected.value
                ? (controller.isLoading.value ? loadinAnim() : getData())
                : noInternet(context),
          )),
    );
  }

  Center loadinAnim() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset('assets/a.json'),
      ),
    );
  }

  RefreshIndicator getData() {
    return RefreshIndicator(
      color: MyColors.prColor,
      onRefresh: () {
        return controller.getposts();
      },
      child: ScrollablePositionedList.builder(
          itemScrollController: controller.itemController, // fetch the position of list
          physics: BouncingScrollPhysics(), // animation for list
          itemCount: controller.post.length, // length list of data from controller
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(DetailsPage(index: index));
              },
              child: Card(
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(controller.post[index].id.toString()), // id from the list named post
                    ),
                  ),
                  title: Text(
                    controller.post[index].title,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(controller.post[index].body),
                ),
              ),
            );
          }),
    );
  }

  Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Lottie.asset('assets/b.json'),
          ),
          MaterialButton(
            color: MyColors.prColor,
            onPressed: () => _materialOnTapButton(context),// to check the internet is connected
            child: const Text(
              "Try Again",
              style: TextStyle(color: Colors.white,
                  fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
  /// onTap Func of "Try Again Button"
  void _materialOnTapButton(BuildContext context) async {
    if (await InternetConnectionChecker().hasConnection == true) {
      controller.getposts();
    } else {
      showCustomSnackBar(context);
    }
  }

 FloatingActionButton  _buildFab() {
    return FloatingActionButton(onPressed: (){
      controller.isListViewScrolltoDown.value?
      controller.ScrollUp():
      controller.ScrolltoDown();
    }, backgroundColor: MyColors.prColor,
    child:
    FaIcon(controller.isListViewScrolltoDown.value?
    FontAwesomeIcons.arrowUp:FontAwesomeIcons.arrowDown),);
 }
}
