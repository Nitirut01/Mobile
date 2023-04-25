import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

import 'package:route/models/FallModels.dart';

class FallDatabase {
  static Future<sql.Database> database() async {
    return sql.openDatabase('database.db', version: 1,
        onCreate: ((db, version) async {
      db.execute(FallModels().FallTable);
    }));
  }

  static Future<void> addFav(FallModels yogaModel) async {
    final db = await database();
    await db.insert('FoodCart', yogaModel.toJson(),
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getFav() async {
    final db = await database();
    return db.query('foodcart');
  }
}