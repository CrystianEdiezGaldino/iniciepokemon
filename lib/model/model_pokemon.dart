// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ModelPokemon {
  final String name;
  final String url;
  ModelPokemon({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory ModelPokemon.fromMap(Map<String, dynamic> map) {
    return ModelPokemon(
      name: map['name'] != null ? map['name'] as String : "",
      url: map['url'] != null ? map['url'] as String : "",
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelPokemon.fromJson(String source) =>
      ModelPokemon.fromMap(json.decode(source) as Map<String, dynamic>);

  fromJson(ModelPokemon modelPokemon) {}
}
