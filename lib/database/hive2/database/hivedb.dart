import 'package:hive/hive.dart';
import '../model/user_model.dart';

class HiveDB{

  HiveDB._internal();

  static HiveDB instance = HiveDB._internal();

  factory HiveDB(){ // factory constructor for creating Singleton Class
    return instance;   // these class have only one instance
  }

  Future<List<User>> getUser() async {
    final db = await Hive.openBox<User>('userdata');
    return db.values.toList();   // fetch all the values from hive box
  }
}

