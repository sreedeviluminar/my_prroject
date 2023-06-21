import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sql.dart';

class SQLHelper{
  ///1. create database  db()
  static Future<sql.Database> db() async {
    //built in function
    return sql.openDatabase(
        'mydatabase.db',
        version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTables(database);  // user defined Function
        });
  }

  ///2. create table with nametodo and column name as title and task
  static Future<void> createTables(sql.Database database) async {
    // built function
    await database.execute("""CREATE TABLE mycontacts(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        cname TEXT,
        cnumber TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  /// insert data to database
  static Future<int> create_contact(String name, String number) async {
    final db = await SQLHelper.db();  // to open- database since database in a secure place and always in closed state
    final data = {"cname" : name , "cnumber": number};
    // final id = await db.insert("mycontacts", {"cname" : name , "cnumber": number});
    final id = await db.insert("mycontacts", data,conflictAlgorithm: ConflictAlgorithm.replace);
    return id;

  }
/// fetch all the datas from database
  static Future<List<Map<String,dynamic>>> getDatas() async {
    final db = await SQLHelper.db();
    return db.query('mycontacts',orderBy: 'id');
  }

  ///read/ fetch a single value from database
  static Future<List<Map<String,dynamic>>> getSingleData(int id) async {
    final db = await SQLHelper.db();
    return db.query('mycontacts', where:'id = ?',whereArgs: [id],limit: 1);
  }

  ///update a single contact
  static Future<int> updateContact(int id, String name, String num) async {
    final db = await SQLHelper.db();
    final newdata = {
      'cname'  : name,
      'cnumber': num,
      'createdAt':DateTime.now().toString()
    };
    final newid = await db.update('mycontacts', newdata, where: 'id =?', whereArgs: [id]);
    return newid;
  }

  static Future<void> deleteContact(int id) async {
    final db = await SQLHelper.db();
    try{
      await db.delete('mycontacts',where:'id = ?',whereArgs: [id]);
    }catch(e){
      debugPrint('$e Something went wrong');
    }
  }
}