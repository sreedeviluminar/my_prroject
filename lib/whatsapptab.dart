import 'package:flutter/material.dart';
import 'package:my_prroject/List_with_separator.dart';
import 'package:my_prroject/Listview_builder.dart';
import 'package:my_prroject/home.dart';
import 'package:my_prroject/statefulLogin.dart';

void main() {
  runApp(MaterialApp(home: WhatsAppTab()));
}

class WhatsAppTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("WhatsApp"),
              bottom: PreferredSize(
                preferredSize:  Size.fromHeight(AppBar().preferredSize.height),
                child: Container(
                 // decoration: BoxDecoration(borderRadius: BorderRadius.circular(Radius.)),
                  child: TabBar(
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: EdgeInsets.zero,
                      tabs: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .1,
                            child: const Tab(
                              icon: Icon(Icons.people_alt_rounded),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .3,
                            child: const Tab(
                              text: "Chats",
                            )),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: const Tab(
                            text: "Status",
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .3,
                          child: const Tab(
                            text: "Calls",
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                List_with_separator(),
                List_with_builder(),
                const LoginPage2(),
                HomePage(),
              ],
            )));
  }
}
