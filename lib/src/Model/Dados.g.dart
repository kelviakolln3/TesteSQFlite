// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Dados.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Produto _$ProdutoFromJson(Map<String, dynamic> json) => Produto(
      produtos: (json['produtos'] as List<dynamic>?)
          ?.map((e) => Produtos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProdutoToJson(Produto instance) => <String, dynamic>{
      'produtos': instance.produtos,
    };
