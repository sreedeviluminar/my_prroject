import 'package:flutter/material.dart';
import 'package:my_prroject/statelessloginPage.dart';

class List_with_builder extends StatelessWidget {
  var names = [
    "Anu",
    "Beena",
    "Cera",
    "Dona",
    "Elvin",
    "Anu",
    "Beena",
    "Cera",
    "Dona",
    "Elvin"
  ];
  var numbers = [
    987654321,
    123456789,
    1020304050,
    543267891,
    123456789,
    987654321,
    123456789,
    1020304050,
    543267891,
    123456789
  ];
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
    "assets/icons/logingirl.png"
  ];

  var colors = [900, 800, 700, 600, 500, 400, 300, 200, 100, 50];
  var colo = [
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.cyan,
    Colors.deepOrange,
    Colors.greenAccent,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   //centerTitle:true,
      //   title: const Center(child: Text("List with Builder")),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: Icon(Icons.message),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  // color: colo[index],
                  color: Colors.green[colors[index]],
                  child: ListTile(
                    title: Text(names[index]),
                    subtitle: Text("${numbers[index]}"),
                    leading: Image.asset(photo[index]),
                  ),
                );
              },
              itemCount: names.length,
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Next"))
        ],
      ),
    );
  }
}
