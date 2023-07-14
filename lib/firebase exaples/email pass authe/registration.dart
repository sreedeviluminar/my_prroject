import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_prroject/firebase%20exaples/email%20pass%20authe/FireHelper.dart';
import 'package:my_prroject/firebase%20exaples/email%20pass%20authe/login.dart';

import '../../database/hive2/screen/Home.dart';
import 'home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // to get the currently logined in user
  User? user =FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? LoginFire(): HomeFire()));

}
class RegistrationFire extends StatefulWidget {
  const RegistrationFire({super.key});

  @override
  State<RegistrationFire> createState() => _RegistrationFireState();
}

class _RegistrationFireState extends State<RegistrationFire> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pass,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String mail = email.text.trim();
                String pwd = pass.text.trim();

                FireHelper().signUp(email: mail, password: pwd).then((result) {
                  if (result == null) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginFire()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: Text('Register'))
        ],
      ),
    );
  }
}
