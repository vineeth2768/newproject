import 'dart:developer';
import 'dart:io'; 
import 'package:newproject/model/user_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class UserDataBase{
  static String? path;
  static const _databaseName = "mydb";
  static const _databaseVersion = 1;

  static final _table_user = "users";
  static final _table_logins ="logins";

  UserDataBase._privateConstructor();
  static final UserDataBase instance = UserDataBase._privateConstructor();

  static Database? _database;

  Future get database async {
    if(_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase()async{
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String Path = join(documentDirectory.path, _databaseName);
    return await openDatabase(path! ,version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version)async{
    await db.execute("CREATE TABLE users(id INTEGER PRIMERY KEY autonincrement,name TEXT,email TEXT,password TEXT,conformpassword TEXT)",
    );
    await db.execute("CREATE TABLE logins(name TEXT, email TEXT, password TEXT, conformpassword TEXT)",);
  }
  static Future getFileData()async{
    return getDatabasesPath().then((s) => path =s);
  }
  Future insertUser(UserModel user)async{
    Database db = instance.database as Database;

    var users = 
          await db.rawQuery("select * from users where name ="+ user.name);
          if(users.isNotEmpty){
            return -1;
          }
          return await db.insert("users" , user.toUserMap(),
          conflictAlgorithm: ConflictAlgorithm.ignore,
          );
  }
  Future checkUserLogin(String name, String password)async{
     Database db = await instance.database;
     var res  = await db.rawQuery("select * from users where name = '$name' and password '$password'");
     log('respones == $res');
     if(res.isNotEmpty){
       List list = res.toList().map((c) => UserModel.fromMap(c)).toList();

       log("Data"+ list.toString());
       await db.insert("logins", list[0].toUserMap());
       return list[0];
     }
     return null;
  }
  Future getUser() async {
    Database db = await instance.database;
    var logins = await db.rawQuery("select * from logins");
    // if (logins == null) return 0;
    return logins.length;
  }
  Future getUserData()async{
     Database db = await instance.database;
     var res = await db.rawQuery("select * from logins");
     log("result user data $res");
     log("result user data"+ res.toString());
     List list = res .toList().map((c) => UserModel.fromMap(c)).toList();
     return list[0];
  }
  Future deleteUser(String name) async {
    Database db = await instance.database;
    var logins =
        db.delete(_table_logins, where: "name = ?", whereArgs: [name]);
    return logins;
  }
}