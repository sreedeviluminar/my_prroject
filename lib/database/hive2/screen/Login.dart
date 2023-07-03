import 'package:flutter/material.dart';

import 'Registration.dart';

class Login extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Login")),
          TextButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HiveRegistration())),
              child: const Text("Go to Registration"))
        ],
      ),
    );
  }
}
