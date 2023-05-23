import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_prroject/Grid_count.dart';
import 'package:my_prroject/List_with_separator.dart';
import 'package:my_prroject/Listview_builder.dart';
import 'package:my_prroject/home.dart';

void main() {
  runApp(MaterialApp(
    home: BottomBar(),
  ));
}

class BottomBar extends StatefulWidget {
  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int index = 0;

  var screens = [
    List_with_builder(),
    List_with_separator(),
    HomePage(),
    Grid_Builder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottoM Nav Bar Ex"),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.flip,
        items: const [
          TabItem(icon: Icons.list),
          TabItem(icon: Icons.calendar_today),
          TabItem(icon: Icons.assessment),
        ],
        initialActiveIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        }
      ),


      //BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.purple,
      //   selectedItemColor: Colors.amber,
      //   onTap: (tapindex){
      //     setState(() {
      //       index = tapindex;
      //     });
      //
      //   },
      //   currentIndex: index,
      //   items: const [
      //     BottomNavigationBarItem(
      //       backgroundColor: Colors.green,
      //         icon: Icon(Icons.account_circle_rounded), label: "Profile"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle_rounded), label: "Profile"),
      //     BottomNavigationBarItem(
      //         backgroundColor: Colors.red,
      //         icon: Icon(Icons.account_circle_rounded), label: "Profile"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle_rounded), label: "Profile"),
      //   ],
      // ),
      body: Center(
        child: screens[index],
      ),
    );
  }
}
