import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_prroject/database/hive2/database/hivedb.dart';
import 'package:my_prroject/database/hive2/model/user_model.dart';
import 'Home.dart';
import 'Registration.dart';

void main(){

}
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
          ElevatedButton(onPressed: () async{
            final users = await HiveDB.instance.getUser();
            checkUserExit(users);
          }, child: const Text("Login")),
          TextButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HiveRegistration())),
              child: const Text("Go to Registration"))
        ],
      ),
    );
  }

  Future<void> checkUserExit(List<User> users) async {
    final lemail = email.text.trim();
    final lpass  = pass.text.trim();
    bool userFound = false;
    if(lemail != "" && lpass != ""){
      await Future.forEach(users, (singleuser) {
        if(lemail == singleuser.email  && lpass == singleuser.password){
          userFound = true;
        }else{
          userFound = false;
        }
      });
      if(userFound == true){
        Get.offAll(()=>Home(email:lemail));
        Get.snackbar("Success", "Logined as $lemail");
      }else{
        Get.snackbar("error", "Login Failed ,No user Exist!!!");
      }
    } else{
      Get.snackbar("error", "Please Fill the fields");
    }
  }
}
