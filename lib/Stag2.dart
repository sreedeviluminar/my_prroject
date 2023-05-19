import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_prroject/MyWidget.dart';
void main(){
  runApp(MaterialApp(home: Stag2(),));
}
class Stag2 extends StatelessWidget {
  var photo = [
    "assets/icons/babydog.png",
    "assets/icons/donut.png",
    "assets/icons/duckicon.png",
    "assets/icons/easter.png",
    "assets/icons/logingirl.png",
    "assets/icons/babydog.png",
    "assets/icons/donut.png",
    "assets/icons/duckicon.png",
    "assets/icons/easter.png",
    "assets/icons/logingirl.png",
    "assets/icons/babydog.png",
    "assets/icons/donut.png",
    "assets/icons/duckicon.png",
    "assets/icons/easter.png",
    "assets/icons/logingirl.png",
    "assets/icons/babydog.png",
    "assets/icons/donut.png",
    "assets/icons/duckicon.png",
    "assets/icons/easter.png",
    "assets/icons/logingirl.png"
  ];
   var ccount =[1,2,3,1,3,2,1,2,3,1,2,2,1,2,1,3,3,2,1,2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: List.generate(
              20,
              (index) => StaggeredGridTile.count(
                    crossAxisCellCount: ccount[index],
                    mainAxisCellCount: 1,
                    child: MyWidget(image: Image.asset(photo[index]),
                    bcolor: Colors.teal,),
                  )),
        ),
      ),
    );
  }
}
