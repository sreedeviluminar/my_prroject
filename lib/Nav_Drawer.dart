import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.orange),
        child: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("assets/images/img.png"), fit:BoxFit.cover)),
                accountName: Text("Ann Jose"),
                accountEmail: Text("Ann10@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/logingirl.png"),),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/easter.png"),),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/donut.png"),),
                ],
              ),
              ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("Wallet"),
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text("LogOut"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
