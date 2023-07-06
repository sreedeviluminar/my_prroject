import 'package:hive/hive.dart';
import '../model/user_model.dart';

class HiveDB{
  HiveDB._internal();    // named constructor
  static HiveDB instance = HiveDB._internal();

  factory HiveDB(){ // factory constructor for creating Singleton Class
    return instance;   // these class have only one instance
  }

  Future<List<User>> getUser() async {
    final db = await Hive.openBox<User>('userdata');
    return db.values.toList();   // fetch all the values from hive box
  }

 Future<void> addUser(User user) async{
    final db = await Hive.openBox<User>('userdata');
    db.put(user.id, user); // add email and password to hive using modelclass

 }
}

