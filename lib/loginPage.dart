import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatelessWidget {
  ///predefined username and password
  String username = "admin";
  String password = "abc123";

  ///controller for fetching data from textfield
  TextEditingController uname = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/icons/easter.png", height: 200, width: 200),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    // fillColor: Colors.orange,
                    // filled: true,
                    prefixIcon: Icon(Icons.email),
                    //helperText: "Username must be an email",
                    hintText: "Username",
                    labelText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    // helperText: "Password must have 6 characters",
                    prefixIcon: Icon(Icons.password),
                    hintText: "Password",
                    labelText: "PassWord",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  ///fetching value from textfield using controller
                  String email = uname.text.trim();
                  String pwd = pass.text.trim();

                  if (email != '' && pwd != '') {
                    if (username == email && password == pwd) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Username or password mismatch")));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Fields cannot be empty")));
                  }
                },
                child: const Text('Login')),
            TextButton(
                onPressed: () {},
                child: Text("Not a User?.... Register Here!!!")),
            TextButton(onPressed: () {}, child: Text("Skip"))
          ],
        ),
      ),
    );
  }
}
