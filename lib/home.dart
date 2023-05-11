import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contacts"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.camera_alt),

          SizedBox(width: 10,),
        ],
      ),
      body: ListView(
        children: [
          Card(
            color: Colors.yellow,
            child: ListTile(
                title: const Text("Anu"),
                subtitle: const Text("9123456754"),
                //  leading: Icon(Icons.contacts_sharp) ,
                leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img.png")),
                trailing: Wrap(
                  children: const [
                    Icon(Icons.message),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.phone)
                  ],
                )),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: ListTile(
                title: const Text("Bibin"),
                subtitle: const Text("9123456754"),
                leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img.png")),
                trailing: Wrap(
                  children: const [
                    Icon(Icons.message),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.phone)
                  ],
                )),
          ),
          const Text("Ciya"),
          const Text("Dona"),
          const Text("Febin"),
          const Text("George"),
        ],
      ),
    );
  }
}
