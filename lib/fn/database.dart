import 'dart:core';
import 'package:sqflite/sqflite.dart';

connection() async {
  var databasesPath = await getDatabasesPath();
  String path = databasesPath+'database.db';
  //await deleteDatabase(path);
  Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE note (id INTEGER PRIMARY KEY, title TEXT, description TEXT)');
      });
  return database;
}

insert(data) async {
  Database database=await connection();
  await database.transaction((txn) async {
    //int id1 = await txn.rawInsert('INSERT INTO note(title, description) VALUES("some title", 1234)');
    int id = await txn.rawInsert('INSERT INTO note (title, description) VALUES(?, ?)', data);
    print('inserted: $id');
  });
  await database.close();
}

update(data,id) async {
  Database database=await connection();
  int count = await database.rawUpdate(
    'UPDATE note SET title = ?, description = ? WHERE id = $id', data);
  print('updated: $count');
  await database.close();
}


select() async {
  Database database=await connection();
  List<Map> list = await database.rawQuery('SELECT * FROM note');
  print(list);
  await database.close();
  return list;
}


delete(id) async {
  Database database=await connection();
  await database.rawDelete('DELETE FROM note WHERE id = ?', id);
  await database.close();
}