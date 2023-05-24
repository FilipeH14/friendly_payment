import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';

class SqliteConnectionFactory {
  static const _VERSION = 1;
  static const _DATABASE_NAME = 'FRIENDLY_PAYMMENT';

  static SqliteConnectionFactory? _instance;

  Database? _db;
  final _lock = Lock();

  SqliteConnectionFactory._();

  factory SqliteConnectionFactory() {
    _instance ??= SqliteConnectionFactory._();

    return _instance!;
  }

  Future<Database> openConnection() async {
    var databasepath = await getDatabasesPath();
    var databasePathFinal = join(databasepath, _DATABASE_NAME);

    if (_db == null) {
      await _lock.synchronized(() async {
        _db ??= await openDatabase(databasePathFinal, version: _VERSION);
      });
    }

    return _db!;
  }

  void closeConnection() {
    _db?.close();
    _db == null;
  }
}
