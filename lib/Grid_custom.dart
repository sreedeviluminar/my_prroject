import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_Extent(),
  ));
}

class Grid_Extent extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          childrenDelegate:
              // SliverChildBuilderDelegate((context, index) => const Card(
              //       child: Center(
              //         child: Text("Hello"),
              //       ),
              //     ))
              SliverChildListDelegate(
                  //[] or
                  List.generate(10,
                      (index) =>  Card(
                            color: colors[index],
                             child: const Center(
                              child: Text("Hello"),
                            ),
                          )))),
    );
  }
}
