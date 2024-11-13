import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../samdb.dart';

export 'package:samdb/src/models/samdb_models.dart';

class SamDB {
  String databaseName;
  DatabaseType databaseType;
  DbSchema schema;
  String? pwd;
  Database? _db;

  SamDB({
    required this.databaseName,
    this.databaseType = DatabaseType.Sqlite,
    required this.schema,
    this.pwd,
  });
  Future<Database> _initDb() async {
    if (_db != null) return _db!;
    String path = join(await getDatabasesPath(), databaseName);
    _db = await openDatabase(path, version: 1, onCreate: (db, version) {
      // Set up your tables here
      db.execute('''CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT, age INTEGER)''');
    });
    return _db!;
  }

  UserQuery get user => UserQuery(db: _initDb());
}

class UserQuery {
  final Future<Database> db;
  final List _where = [];

  UserQuery({
    required this.db,
  });

  UserQuery where(String columnName) {
    _where.add(columnName);
    return this;
  }

  findMany({int? limit,String? orderby}) {
    print("${db} ${_where}");
  }
}

class User {
  String id;
  String name;
  String email;
  String password;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });
}
