import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:samdb/samdb.dart';
import 'package:samdb_example/features/mydatabase.dart';

void main() {
  SamDB sam = SamDB(
      databaseName: 'books',
      schema: DbSchema(tables: [
        DbTable('users', columns: [DbColumn('name', type: ColumnType.string)])
      ]));
  sam.user.where('samed').where('farouk').findMany();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Samdb'),
        ),
      ),
    );
  }
}
