import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:my_calender/Event.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

class DBHelper {
  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    String path = join(await getDatabasesPath(), 'events.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
      "CREATE TABLE events (id INTEGER PRIMARY KEY, name TEXT, date INTEGER)",
    );
  }

  Future<void> insertEvent(Event event) async {
    var dbClient = await db;
    await dbClient.insert(
      'events',
      event.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  final myEvent = Event(id: 0, name: "My New Event", date: 20201012);

  Future<List<Event>> events() async {
    var dbClient = await db;
    final List<Map<String, dynamic>> maps = await dbClient.query('events');
    return List.generate(maps.length, (i) {
      return Event(
        id: maps[i]['id'],
        name: maps[i]['name'],
        date: maps[i]['date'],
      );
    });
  }

  Future<void> updateEvent(Event event) async {
    var dbClient = await db;
    await dbClient.update(
      'events',
      event.toMap(),
      where: "id = ?",
      whereArgs: [event.id],
    );
  }

  Future<void> deleteEvent(int id) async {
    var dbClient = await db;
    await dbClient.delete(
      'events',
      where: "id = ?",
      whereArgs: [id],
    );
  }

/*
  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
  */
}
