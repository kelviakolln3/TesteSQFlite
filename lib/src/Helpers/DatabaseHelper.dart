import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  DatabaseHelper._createInstance();
  static final DatabaseHelper instance = DatabaseHelper._createInstance();

  static Database? _database;
  Future<Database?> get database async{
    _database ??= await initializeDatabase();
    return _database;
  }

  static initializeDatabase() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}produtos.db';
    var contatosDatabase = await openDatabase(path, version: 1, onCreate: _createDb);
    return contatosDatabase;
  }

  static Future _createDb(Database db, int newVersion) async{
    await db.execute("create table PRODUTO (CODIGO int UNIQUE, NOME varchar(60), GRUPO int, MARCA int, QTDEVENDA int, QTDEPADRAO int, DESCRICAOEMBALAGEM varchar(30), "
                    + "FLEX double, QTDEMULTIPLA double, QTDETROCA int , CODIGOBARRAS varchar(13), FLEXFIXO varchar(1), LIMITEINFERIORFLEX double, LIMITESUPERIORFLEX double, "
                    + "PROMOCAO varchar(1), REFERENCIA varchar(60), CODIGONCM varchar(8), ORDEM int, REQUERCOMBO varchar(1), PESOBRUTO double, PESOEMBALAGEM double, "
                    + "QTDEMULTIPLAEMBALAGEM int, DESCONTOFIXO double, COMISSAO double, PMC double, UNREFERENCIA varchar(3), QTDEREFERENCIA double, PERCPOSITIVACAO double, ATIVO varchar(1), "
                    + "DESTACAR varchar(1), MARGEMFLEXISENTA double, CEST varchar(9), NOVO varchar(1), TIPOPRODUTO int, GERARFLEX varchar(1), VALORCUSTO double, QTDEMINIMA double)");
  }
  
  Future close() async{
    Database? db = await instance.database;
    db!.close();
  }
}