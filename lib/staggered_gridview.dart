import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Stag_Grid(),
  ));
}

class Stag_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 1,
                child: InkWell(
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text("Hello"),
                    ),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text("Hello"),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text("Hello"),
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.green,
                  child: const Center(
                    child: Text("Hello"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
