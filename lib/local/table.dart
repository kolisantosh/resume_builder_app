import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'table.g.dart';

@DriftDatabase(
  tables: [
    Resumes,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openDatabase());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openDatabase() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, "resume.sqflite"));

    return NativeDatabase(file);
  });
}

class Resumes extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get email => text()();

  TextColumn get phone => text()();

  TextColumn get summary => text()();

  TextColumn get experience => text()();

  TextColumn get education => text()();

  DateTimeColumn get creationDate => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
