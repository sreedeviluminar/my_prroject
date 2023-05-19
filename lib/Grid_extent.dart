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
      body: GridView.extent(
        maxCrossAxisExtent: 30,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(
            20,
            (index) => Stack(
                  children: [
                    Container(
                      color: colors[index],
                    ),
                    const Center(
                      child: Icon(
                        Icons.ac_unit_outlined,
                        size: 10,
                      ),
                    )
                  ],
                )),
      ),
    );
  }
}
