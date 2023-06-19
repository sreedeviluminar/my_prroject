import 'package:sqflite/sqflite.dart' as sql;
class SQLHelper{
  ///create table with nametodo and column name as title and task
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE mycontacts(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        task TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  //create database  db()
  static Future<sql.Database> db() async {
    return sql.openDatabase('mydatabase.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTables(database);
        });
  }

  static create_contact(String text, String text2) {}

}