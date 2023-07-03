import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:my_prroject/database/hive2/model/user_model.dart';

import '../database/hivedb.dart';

class HiveRegistration extends StatelessWidget {
  TextEditingController remail = TextEditingController();
  TextEditingController rpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Registration"),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: remail,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: rpass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                //fetch all the users from hive
                final userlist = await HiveDB.instance.getUser();
                validateSignUp(userlist);
                remail.text = "";
                rpass.text ="";
              },
              child: const Text("Registration")),
        ]));
  }

  void validateSignUp(List<User> userlist) async {
    final mail = remail.text.trim();
    final pwd   = rpass.text.trim();
    bool isUserFound = false;
    final validateEmail = EmailValidator.validate(mail); // result in bool

    if(mail != "" && pwd != ""){
      if(validateEmail == true){
        await Future.forEach(userlist, (user) {
          if(user.email == mail){   // check whether email from hive through class and mail enterd are same
            isUserFound  = true;
          }else{
            isUserFound = false;
          }
        });
      }
    }

  }
}
