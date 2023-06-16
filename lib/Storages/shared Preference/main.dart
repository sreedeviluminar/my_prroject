import 'package:flutter/material.dart';
import 'package:my_prroject/Storages/shared%20Preference/Homee.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();

  late SharedPreferences preferences;
  late bool newUser;

  @override
  void initState() {
    check_user_alreadyLogin();
    super.initState();
  }

  void check_user_alreadyLogin() async {
    preferences = await SharedPreferences.getInstance();
    //if  preferences.getBool('firstlogin') == null then value of newUser = true
    newUser = preferences.getBool('firstlogin') ?? true;

    if(newUser == false){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ProfileHome()));
    }
  }
  @override
  void dispose() {
   uname_controller.dispose();
   pass_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "LoginPage",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: uname_controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "UserName"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
                child: TextField(
                  controller: pass_controller,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                )),
            ElevatedButton(
                onPressed: () {
                  String username = uname_controller.text;
                  String password = pass_controller.text;

                  if (username != '' && password != '') {

                    //saving data to shared preference
                    preferences.setString("username", username);
                    preferences.setBool('firstlogin', false);

                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>ProfileHome()));
                  }
                },
                child: const Text("Log-In"))
          ],
        ),
      ),
    );
  }

}
