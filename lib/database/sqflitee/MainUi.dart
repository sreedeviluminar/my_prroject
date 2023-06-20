import 'package:flutter/material.dart';
import 'package:my_prroject/database/sqflitee/sqlFunction.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;

  //to fetch data from sqflite
  List<Map<String, dynamic>> contact = [];

  @override
  void initState() {
    refreshUi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Contacts")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
          itemCount:  contact.length,
          itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(contact[index]['cname']),
                  subtitle: Text(contact[index]['cnumber']),
                  trailing: SizedBox(
                    width: 100,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                ),
              );
            }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showSheet(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final namecontroller = TextEditingController();
  final numcontroller = TextEditingController();

  void showSheet(int? id) async {
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
              padding: EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                  bottom: MediaQuery.of(context).viewInsets.bottom + 120),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    controller: namecontroller,
                    decoration: const InputDecoration(hintText: "Contact name"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: numcontroller,
                    decoration:
                        const InputDecoration(hintText: "Contact number"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        if (id == null) {
                          await createContact();
                        }
                        if (id != null) {
                          //await updateContact(id);
                        }
                        namecontroller.text = "";
                        numcontroller.text = "";
                        Navigator.of(context).pop();
                      },
                      child: (id == null)
                          ? const Text("Create Contact")
                          : const Text("Update Contact"))
                ],
              ),
            ));
  }

  // to add new contact to sqflite
  Future<void> createContact() async {
    await SQLHelper.create_contact(namecontroller.text, numcontroller.text);
    refreshUi();
  }

// refresh the ui (means the list named contact)
// when a new contact added/ delete/ update etc
  void refreshUi() async {
    final data = await SQLHelper.getDatas(); // data is list of map values
    setState(() {
      contact = data;
      isLoading = false;
    });
  }
}
