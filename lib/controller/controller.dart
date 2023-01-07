// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert' as convert;

import '../model/model_pokemon.dart';

class MainController extends ChangeNotifier {
  String baseUrl = "https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0";

  Future getPokemon() async {
    try {
      var response = await Dio().get(
        baseUrl,
      );
      if (response.statusCode == 200) {
        ModelPokemon model =
            ModelPokemon.fromJson(convert.jsonDecode(response.data));

        if (response.statusCode == 200) {
          return model;
        } else {
          return print("Error:  + ${response.statusCode}");
        }
      }
    } catch (e) {
      return print("Não foi possivel se conectar a API");
    }
  }
}
