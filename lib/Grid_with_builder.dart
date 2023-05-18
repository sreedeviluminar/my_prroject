import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Grid_Builder(),));
}

class Grid_Builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
          shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
            childAspectRatio: 2,
            mainAxisSpacing: 5,
            ),
            itemBuilder: (ctx, index) {
              return const Card(
                child: Center(
                  child: Text("HELLO"),
                ),
              );
            },
        itemCount: 20,
        ));
  }
}
