import 'package:flutter/material.dart';
import 'package:my_prroject/Storages/shared%20Preference/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileHome extends StatefulWidget {
  @override
  State<ProfileHome> createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  late SharedPreferences logindata;
  late String username;

  @override
  void initState() {
    userdata();
    super.initState();
  }

  void userdata() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Welcome $username",
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  logindata.setBool("firstlogin", true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text("LOGOUT"))
          ],
        ),
      ),
    );
  }
}
