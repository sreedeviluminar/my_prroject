import 'package:flutter/material.dart';
import 'package:my_prroject/passing%20data%20between%20screens/statefull%20page.dart';
import 'package:my_prroject/passing%20data%20between%20screens/stateless%20page.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  String name = "Luminar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StatelessPage(
                        v1: name, v2: "Kakkanad", v3: 9876742341))),
                child: const Text("Stateless Page")),

            ElevatedButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => StatefullPage(
                        v1: name, v2: "Kakkanad", v3: 9876742341))),
                child: const Text("Statefull Page"))
          ],
        ),
      ),
    );
  }
}
