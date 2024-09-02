import 'dart:developer';
import 'package:sqflite/sqflite.dart'as sql;
import '../../model/food_model.dart';


class Database {
  static Future<void> createTable(sql.Database database) async {
    await database.execute('''
      CREATE TABLE IF NOT EXISTS food (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        image TEXT,
        title TEXT,
        price Float,
          rate float
      );
    ''');
  }

  static Future<sql.Database> create() async {
    return await sql.openDatabase(
      'food.db',
      version: 1,
      onCreate: (sql.Database db, int version) async {
        await createTable(db);
      },
    );
  }

  static Future<int> insertFood(Food food) async {
    final db = await create();
    final data = {
      'title': food.name,
      'image': food.image,
      'price': food.price,
      'rate' :food.rate,
    };

    final id = await db.insert(
      'food',
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
    return id;
  }

  static Future<List<Map<String, Object?>>> getFood() async {
    final db = await Database.create();
    return db.query('food', orderBy: 'id');
  }

  static Future<List<Map<String,Object?>>> getFoodbyId(int id) async{
    final db =await Database.create();
    return db.query('Food',where: "id = ?" ,whereArgs: [id]);
  }

  static Future<void> deleteFoodById(int id) async {
    final db = await create();
    try {
      await db.delete('food', where: "id = ?", whereArgs: [id]);
    } catch (e) {
       log('Error: $e');
    }
  }
}



