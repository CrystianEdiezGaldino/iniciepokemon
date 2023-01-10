// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModelPokemonDetail {
  final int id;
  final String nome;
  ModelPokemonDetail({
    required this.id,
    required this.nome,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
    };
  }

  factory ModelPokemonDetail.fromMap(Map<String, dynamic> map) {
    return ModelPokemonDetail(
      id: map['id'] != null ? map['id'] as int : 0,
      nome: map['name'] != null ? map['name'] as String : "",
    );
  }

  String toJson() => json.encode(toMap());
}
