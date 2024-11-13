enum DatabaseType{
  Sqlite
}

// Enum for column types
enum ColumnType { string, int, bool, real ,datetime}

// Column class
class DbColumn {
  final String name;
  final ColumnType type;
  DbColumn(this.name, {required this.type});
}

// Table class
class DbTable {
  final String name;
  final List<DbColumn> columns;
  DbTable(this.name,{ required this.columns});
}

class DbSchema{
  List <DbTable> tables;
  DbSchema({
    required this.tables,
  });

}
