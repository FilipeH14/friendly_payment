import 'package:friendly_payment/app/core/database/migrations/migration.dart';
import 'package:sqflite_common/sqlite_api.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
        create table order(
          id Integer primary key autoincrement,
          name varchar(100) not null,
          card_number numeric not null,
          split_price
        )
    ''');
  }

  @override
  void update(Batch batch) {}
}
