import 'dart:core';
import 'package:sqflite/sqflite.dart';

connection() async {
  var databasesPath = await getDatabasesPath();
  String path = databasesPath+'database.db';
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
    await txn.rawInsert('INSERT INTO note (title, description) VALUES(?, ?)', data);
  });
  await database.close();
}

update(data,id) async {
  Database database=await connection();
  await database.rawUpdate('UPDATE note SET title = ?, description = ? WHERE id = $id', data);
  await database.close();
}

select() async {
  Database database=await connection();
  List<Map> list = await database.rawQuery('SELECT * FROM note');
  await database.close();
  return list;
}

delete(id) async {
  Database database=await connection();
  await database.rawDelete('DELETE FROM note WHERE id = ?', id);
  await database.close();
}