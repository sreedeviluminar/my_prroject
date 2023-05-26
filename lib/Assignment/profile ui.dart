import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Profile_UI(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile_UI extends StatelessWidget {
  const Profile_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/icons/logingirl.png"),
              radius: 75,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 70, right: 70, top: 25),
            height: 40,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/facebook.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/twitter.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/linkedin.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/github.png"),
                  radius: 20,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50, top: 30),
            height: 80,
            child: const Column(
              children: [
                Text(
                  "Deviletha Sai",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "@developer",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: const Column(
              children: [
                Text(
                  "Junior Flutter Developer",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35, right: 35),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.2,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  ProfTile(
                    text: "Privacy",
                    icon: Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.black,
                    ),
                  ),
                  ProfTile(
                    text: "Purchase History",
                    icon: Icon(Icons.history, color: Colors.black),
                  ),
                  ProfTile(
                    text: "Help & Support",
                    icon: Icon(Icons.help_outline_sharp, color: Colors.black),
                  ),
                  ProfTile(
                    text: "Settings",
                    icon: Icon(Icons.settings, color: Colors.black),
                  ),
                  ProfTile(
                    text: "Invite a friend",
                    icon: Icon(Icons.person_add_alt_1_outlined,
                        color: Colors.black),
                  ),
                  ProfTile(
                    text: "Log Out",
                    icon: Icon(Icons.logout, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfTile extends StatelessWidget {
  const ProfTile({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.grey[300]),
      child: ListTile(
        dense: true,
        title: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}
