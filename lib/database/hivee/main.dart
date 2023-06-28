import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('todo_box');
  runApp(MaterialApp(home: CRUD_hive()));
}

class CRUD_hive extends StatefulWidget {
  @override
  State<CRUD_hive> createState() => _CRUD_hiveState();
}

class _CRUD_hiveState extends State<CRUD_hive> {
  List<Map<String, dynamic>> task = [];
  final title = TextEditingController();
  final taskname = TextEditingController();

  //hive object
  final my_box = Hive.box('todo_box');

  @override
  void initState() {
    readTask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CRUD HIVE"),
      ),
      body: task.isEmpty
          ? const Text('No Data')
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                final mytask = task[index]; // mytask will be a map
                return Card(
                  child: ListTile(
                    title: Text(mytask['taskname']),
                    subtitle: Text(mytask['taskcontent']),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              showTask(context, mytask['id']);
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteTask(mytask['id']);
                            }, icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showTask(context, null),
        child: const Icon(Icons.task),
      ),
    );
  }

  void showTask(BuildContext context, int? itemkey) {
    if (itemkey != null) {
      final existing_task =
          task.firstWhere((element) => element['id'] == itemkey);
      title.text = existing_task['taskname'];
      taskname.text = existing_task['taskcontent'];
    }

    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: context,
        builder: (context) {
          return Container(
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
                  controller: title,
                  decoration: const InputDecoration(hintText: 'Task Name'),
                ),
                TextField(
                  controller: taskname,
                  decoration: const InputDecoration(hintText: 'Task content'),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (title.text != "" && taskname != "") {
                        if (itemkey == null) {
                          createTask({
                            'taskname': title.text.trim(),
                            'taskcontent': taskname.text.trim()
                          });
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                            content: Text('Please filled the fields')));
                      }
                      if (itemkey != null) {
                        updateTask(itemkey, {
                          'taskname': title.text.trim(),
                          'taskcontent': taskname.text.trim()
                        });
                      }
                      title.text = "";
                      taskname.text = "";
                      Navigator.of(context).pop();
                    },
                    child:
                        Text(itemkey == null ? "Create Task" : "Update Task"))
              ],
            ),
          );
        });
  }

  //to  create  a new data in hive box
  Future<void> createTask(Map<String, dynamic> newtask) async {
    await my_box.add(newtask);
    readTask();
  }

  void readTask() {
    final task_from_hive = my_box.keys.map((key) {
      // fetch all the keys in ascending order
      final value =
          my_box.get(key); // fetch all the values from box in ascending order
      return {
        'id': key,
        'taskname': value['taskname'],
        'taskcontent': value['taskcontent']
      };
    }).toList();

    setState(() {
      task = task_from_hive.reversed.toList(); //sort latest to oldest
    });
  }

  Future<void> updateTask(int itemkey, Map<String, dynamic> uptask) async{
    await my_box.put(itemkey, uptask);
    readTask();    // refresh ui
  }

  Future<void> deleteTask(int itemkey) async{
    await my_box.delete(itemkey);
    readTask();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('SuccessFully Deleted')));
  }
}
