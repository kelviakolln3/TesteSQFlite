import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:teste_sqlite/src/Helpers/ProdutoDAO.dart';
import 'package:teste_sqlite/src/Model/Produtos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Teste SQLite"), centerTitle: true),
      body: Column(
        children: [
          TextButton(
              onPressed: readJson,
              child: const Text(
                "Criar Banco",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
          const TextButton(
              onPressed: ProdutoDAO.apagarDados,
              child: Text(
                "Apagar dados",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              )),
        ],
      ),
    );
  }

  Future<void> readJson() async {
    final response = await rootBundle.loadString('assets/teste.json');
    final data = json.decode(response);
    List<Produtos> teste = data["Produto"].map<Produtos>((json) => Produtos.fromJson(json)).toList();
    print(teste.length);
    ProdutoDAO.addProduto(teste);
  }
}
