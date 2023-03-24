import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

/// The database provider. Grants access to the database and associated data.
class DbProvider {
    /// The database provider singleton.
    /// TODO: investigate DI or something similar in dart.
    static final DbProvider db = DbProvider._();

    /// The private constructor.
    DbProvider._();

    /// The private database instance.
    static Database? _database;

    /// The accessor for the database instance.
    Future<Database> get database async {
        if (_database == null) {
            _database = await _initDb();
        }
        return _database!;
    }

    /// Initialises the database.
    _initDb() async {
        Directory documentsDirectory = await getApplicationDocumentsDirectory();
        String path = join(documentsDirectory.path, "ChessRS.db");
        return await openDatabase(path,
            version: 1,
            onOpen: (_) {},
            onCreate: (Database db, int version) async {
                await db.execute("CREATE TABLE Openings ("
                    "id INTEGER PRIMARY KEY AUTOINCREMENT,"
                    "name TEXT)");
            }
        );
    }
}
