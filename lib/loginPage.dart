import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
                decoration: InputDecoration(
                  fillColor: Colors.orange,
                  filled: true,
                  //helperText: "Username must be an email",
                    hintText: "Username",
                    labelText: "UserName",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10,right: 10,left: 10),
              child: TextField(
                decoration: InputDecoration(
                   // helperText: "Password must have 6 characters",
                    hintText: "Password",
                    labelText: "PassWord",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60))),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
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
