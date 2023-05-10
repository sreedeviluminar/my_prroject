import 'package:flutter/material.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  var formkey = GlobalKey<FormState>();  // to fetch the state of the form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN STATEFUL"),
      ),
      body: Form(
        key:formkey,
        child: Column(
          children: [
            const Center(
                child: Text(
              "LoginPage",
              style: TextStyle(fontSize: 40),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "UserName",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email)),
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('@')) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.visibility_off)),
                validator: (password){
                  if(password!.isEmpty || password.length < 6){
                    return 'Not a valid Password';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            ElevatedButton(onPressed: () {

              final valid = formkey.currentState!.validate();
            }, child: const Text("Login Here")),
            TextButton(onPressed: () {}, child: const Text("SignUp Here")),
          ],
        ),
      ),
    );
  }
}
