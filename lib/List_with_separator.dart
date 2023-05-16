import 'package:flutter/material.dart';
import 'package:my_prroject/main.dart';

class List_with_separator extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("MyContacts"),
        //   actions: [
        //     IconButton(onPressed: () {
        //
        //     }, icon: Icon(Icons.sunny)),
        //     Icon(Icons.camera_alt),
        //     PopupMenuButton(itemBuilder: (context) {
        //       return [
        //         PopupMenuItem(
        //           child: Text("New Group"),
        //           onTap: () {},
        //         ),
        //         PopupMenuItem(child: Text("New BroadCast")),
        //         PopupMenuItem(child: Text("Linked Device")),
        //         PopupMenuItem(child: Text("Payments")),
        //         PopupMenuItem(child: Text("Settings"))
        //       ];
        //     })
        //   ],
        // ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Image.asset(photo[index]),
                  title: Text(names[index]),
                  subtitle: Text("${numbers[index]}"),
                ),
              );
            },
            separatorBuilder: (cntx, index) {
              return const Divider(
                thickness: 3,
                color: Colors.blue,
              );
            },
            itemCount: names.length));
  }
}
