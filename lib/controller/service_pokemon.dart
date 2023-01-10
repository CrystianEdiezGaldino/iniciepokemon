// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import 'package:inicie_pokemon/model/model_pokemon_details.dart';
// import 'dart:convert' as convert;

import '../model/model_pokemon.dart';

class ServicePokemon {
  Future<List<ModelPokemon>> getPokemons() async {
    try {
      String baseUrl = "https://pokeapi.co/api/v2/pokemon/?offset=20&limit=20";
      var response = await Dio().get(baseUrl);
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((json) => ModelPokemon.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<ModelPokemonDetail?> getPokemonDetail(
      ModelPokemon modelPokemon) async {
    try {
      String baseUrl = modelPokemon.url;
      var response = await Dio().get(baseUrl);
      if (response.statusCode == 200) {
        Map<String, dynamic> data = response.data;
        return ModelPokemonDetail.fromMap(data);
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
