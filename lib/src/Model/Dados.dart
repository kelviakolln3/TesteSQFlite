import 'package:json_annotation/json_annotation.dart';
import 'package:teste_sqlite/src/Model/Produtos.dart';
part 'Dados.g.dart';

@JsonSerializable()
class Produto{
  late List<Produtos>? produtos;

  Produto({
    this.produtos
  });
  factory Produto.fromJson(Map<String, dynamic>json) => _$ProdutoFromJson(json);
  Map<String, dynamic> toJson() => _$ProdutoToJson(this);
}