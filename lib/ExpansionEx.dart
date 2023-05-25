import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:ExpansionTileEx()));
}
class ExpansionTileEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Tile"),
      ),
      body: const Column(
        children: [
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand to View More"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("Purple"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.yellow,),
                title: Text("Yellow"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.lightBlueAccent,),
                title: Text("Sky Blue"),
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Colors"),
            subtitle: Text("Expand to View More"),
            children: [
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.purple,),
                title: Text("Purple"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.green,),
                title: Text("Green"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,),
                title: Text("Red"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.yellow,),
                title: Text("Yellow"),
              ),
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.lightBlueAccent,),
                title: Text("Sky Blue"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
