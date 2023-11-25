# Inicie Pokemon

Um aplicativo Flutter inspirado na Pokedex para o processo seletivo INICIE.

## Descrição

O Inicie Pokemon é um aplicativo desenvolvido como parte do processo seletivo INICIE. Ele permite aos usuários explorar uma lista de pokémons, adicionar pokémons à lista de favoritos, visualizar detalhes como status, força de ataque, defesa e evolução, além de realizar pesquisas. As telas foram projetadas pela equipe de UX/UI e podem ser visualizadas no [Figma](link-para-as-telas-no-figma).

## Tecnologias Utilizadas

O projeto utiliza os seguintes pacotes Flutter:

- **flutter_modular: ^5.0.3**
  - Para a implementação da arquitetura Modular no Flutter.

- **dio: ^4.0.6**
  - Para realizar solicitações HTTP à API de pokémons.

- **provider: ^6.0.3**
  - Para gerenciamento de estado na aplicação.

- **flutter_svg: ^1.1.6**
  - Para a exibição de imagens vetoriais dos pokémons.

- **google_fonts: ^3.0.1**
  - Para o uso de fontes personalizadas no aplicativo.

## Telas

As telas do aplicativo foram definidas pela equipe de UX/UI e estão disponíveis no [Figma](link-para-as-telas-no-figma).

## Consumo da API

O aplicativo consome a API [PokeAPI](https://pokeapi.co/) para obter informações sobre os pokémons. O consumo da API é realizado através do pacote Dio.

```dart
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert' as convert;

import '../model/model_pokemon.dart';

class MainController extends ChangeNotifier {
  String baseUrl = "https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0";

  Future getPokemon() async {
    try {
      var response = await Dio().get(baseUrl);
      if (response.statusCode == 200) {
        ModelPokemon model = ModelPokemon.fromJson(convert.jsonDecode(response.data));

        if (response.statusCode == 200) {
          return model;
        } else {
          return print("Error:  + ${response.statusCode}");
        }
      }
    } catch (e) {
      return print("Não foi possível se conectar à API");
    }
  }
}
Como Executar
Siga as instruções abaixo para rodar o aplicativo localmente:

Clone este repositório:
bash
Copy code
git clone https://github.com/seu-username/iniciepokemon.git
cd iniciepokemon
Instale as dependências:
bash
Copy code
flutter pub get
Execute o aplicativo:
bash
Copy code
flutter run
Contribuição
Contribuições são bem-vindas! Se você deseja contribuir para este projeto, siga estas etapas:

Faça um fork do projeto.
Crie uma branch para suas alterações (git checkout -b feature/sua-feature).
Faça commit de suas alterações (git commit -m 'Adicionar funcionalidade').
Faça push para a branch (git push origin feature/sua-feature).
Abra um pull request.
Autor
Crystian Ediez Galdino
