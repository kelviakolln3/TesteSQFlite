// ignore_for_file: file_names, prefer_conditional_assignment, avoid_print
import 'package:sqflite/sqflite.dart';
import 'package:teste_sqlite/src/Model/Produtos.dart';
import 'DatabaseHelper.dart';

class ProdutoDAO{
  static Future<Database?> _database(){
    return DatabaseHelper.instance.database;
  }

  static void addProduto(List<Produtos> produtos)async{
    final Database? db = await _database();
    var inicio = DateTime.now();
      print("Inicio: $inicio");
    try{
      for(int i = 0; i < produtos.length; i++){
        await db!.execute("insert into PRODUTO(CODIGO, NOME, GRUPO, MARCA, QTDEVENDA, QTDEPADRAO, DESCRICAOEMBALAGEM, FLEX, QTDEMULTIPLA, QTDETROCA, CODIGOBARRAS, FLEXFIXO, LIMITEINFERIORFLEX, LIMITESUPERIORFLEX, PROMOCAO, REFERENCIA, CODIGONCM, ORDEM, REQUERCOMBO, PESOBRUTO, PESOEMBALAGEM, QTDEMULTIPLAEMBALAGEM, DESCONTOFIXO, COMISSAO, PMC, UNREFERENCIA, QTDEREFERENCIA, PERCPOSITIVACAO, ATIVO, DESTACAR, MARGEMFLEXISENTA, CEST, NOVO, TIPOPRODUTO, GERARFLEX, VALORCUSTO, QTDEMINIMA) values(${produtos[i].CODIGO}, '${produtos[i].NOME}', ${produtos[i].GRUPO}, ${produtos[i].MARCA}, ${produtos[i].QTDEVENDA}, ${produtos[i].QTDEPADRAO}, '${produtos[i].DESCRICAOEMBALAGEM}', ${produtos[i].FLEX}, ${produtos[i].QTDEMULTIPLA}, ${produtos[i].QTDETROCA}, '${produtos[i].CODIGOBARRAS}', '${produtos[i].FLEXFIXO}', ${produtos[i].LIMITEINFERIORFLEX}, ${produtos[i].LIMITESUPERIORFLEX}, '${produtos[i].PROMOCAO}', '${produtos[i].REFERENCIA}', '${produtos[i].CODIGONCM}', ${produtos[i].ORDEM}, '${produtos[i].REQUERCOMBO}', ${produtos[i].PESOBRUTO}, ${produtos[i].PESOEMBALAGEM}, ${produtos[i].QTDEMULTIPLAEMBALAGEM}, ${produtos[i].DESCONTOFIXO}, ${produtos[i].COMISSAO}, ${produtos[i].PMC}, '${produtos[i].UNREFERENCIA}', ${produtos[i].QTDEREFERENCIA}, ${produtos[i].PERCPOSITIVACAO}, '${produtos[i].ATIVO}', '${produtos[i].DESTACAR}', ${produtos[i].MARGEMFLEXISENTA}, '${produtos[i].CEST}', '${produtos[i].NOVO}', ${produtos[i].TIPOPRODUTO}, '${produtos[i].GERARFLEX}', ${produtos[i].VALORCUSTO}, ${produtos[i].QTDEMINIMA})");
      }
      var _final = DateTime.now();
      print("Final: $_final");
      var total = inicio.difference(_final);
      print("Total: $total");
    }catch(e){
      print(e);
    }
  }

  static void apagarDados()async{
    final Database? db = await _database();
    try{
      await db!.execute("DELETE  FROM PRODUTO");
    }catch(e){
      print(e);
    }
  }
}