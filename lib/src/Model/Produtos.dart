import 'package:json_annotation/json_annotation.dart';

part 'Produtos.g.dart';

@JsonSerializable()
class Produtos{
  late int? CODIGO;
  late String? NOME;
  late int? GRUPO;
  late int? MARCA;
  late int? QTDEVENDA;
  late int? QTDEPADRAO;
  late String? DESCRICAOEMBALAGEM;
  late double? FLEX;
  late double? QTDEMULTIPLA;
  late int? QTDETROCA;
  late String? CODIGOBARRAS;
  late String? FLEXFIXO;
  late double? LIMITEINFERIORFLEX;
  late double? LIMITESUPERIORFLEX;  
  late String? PROMOCAO;
  late String? REFERENCIA;
  late String? CODIGONCM;
  //late DateTime? DATAENTREGACOMPRA;
  late int? ORDEM;
  late String? REQUERCOMBO;
  late double? PESOBRUTO;
  late double? PESOEMBALAGEM;
  late int? QTDEMULTIPLAEMBALAGEM;
  late double? DESCONTOFIXO;
  late double? COMISSAO;
  late double? PMC;
  late String? UNREFERENCIA;
  late double? QTDEREFERENCIA;
  late double? PERCPOSITIVACAO;
  late String? ATIVO;
  late String? DESTACAR;
  late double? MARGEMFLEXISENTA;
  late String? CEST;
  late String? NOVO;
  late int? TIPOPRODUTO;
  late String? GERARFLEX;
  late double? VALORCUSTO;
  late double? QTDEMINIMA;

  Produtos({
    this.CODIGO,
    this.NOME,
    this.GRUPO,
    this.MARCA,
    this.QTDEVENDA,
    this.QTDEPADRAO,
    this.DESCRICAOEMBALAGEM,
    this.FLEX,
    this.QTDEMULTIPLA,
    this.QTDETROCA,
    this.CODIGOBARRAS,
    this.FLEXFIXO,
    this.LIMITEINFERIORFLEX,
    this.LIMITESUPERIORFLEX,
    this.PROMOCAO,
    this.REFERENCIA,
    this.CODIGONCM,
    //this.DATAENTREGACOMPRA,
    this.ORDEM,
    this.REQUERCOMBO,
    this.PESOBRUTO,
    this.PESOEMBALAGEM,
    this.QTDEMULTIPLAEMBALAGEM,
    this.DESCONTOFIXO,
    this.COMISSAO,
    this.PMC,
    this.UNREFERENCIA,
    this.QTDEREFERENCIA,
    this.PERCPOSITIVACAO,
    this.ATIVO,
    this.DESTACAR,
    this.MARGEMFLEXISENTA,
    this.CEST,
    this.NOVO,
    this.TIPOPRODUTO,
    this.GERARFLEX,
    this.VALORCUSTO,
    this.QTDEMINIMA,
  });


  factory Produtos.fromJson(Map<String, dynamic>json) => _$ProdutosFromJson(json);
  Map<String, dynamic> toJson() => _$ProdutosToJson(this);
}