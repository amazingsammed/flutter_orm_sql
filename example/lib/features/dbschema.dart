import 'package:samdb/samdb.dart';

DbSchema schema = DbSchema(
    tables: [
  DbTable('users', columns: [
    DbColumn('id', type: ColumnType.int),
    DbColumn('name', type: ColumnType.string),
    DbColumn('email', type: ColumnType.string),
    DbColumn('status', type: ColumnType.int),
  ]),
  DbTable('posts', columns: [
    DbColumn('id', type: ColumnType.int),
    DbColumn('userid', type: ColumnType.string),
    DbColumn('post', type: ColumnType.string),
    DbColumn('date', type: ColumnType.datetime),
  ]),
]);
