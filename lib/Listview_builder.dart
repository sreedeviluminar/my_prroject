import 'package:flutter/material.dart';

class List_with_builder extends StatelessWidget {

  var names   = ["Anu","Beena","Cera","Dona","Elvin"];
  var numbers = [987654321,123456789,1020304050,543267891,123456789];
  var photo   = ["assets/icons/babydog.png",
  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List with Builder"),),
      body: ListView.builder(itemBuilder: (context, index){

      }),
    );
  }
}
