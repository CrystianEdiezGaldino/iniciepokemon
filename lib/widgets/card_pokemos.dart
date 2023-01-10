// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:inicie_pokemon/model/model_pokemon.dart';
import 'package:inicie_pokemon/model/model_pokemon_details.dart';

import '../controller/service_pokemon.dart';

class CardPokemon extends StatefulWidget {
  final ModelPokemon modelPokemon;
  const CardPokemon({
    Key? key,
    required this.modelPokemon,
  }) : super(key: key);

  @override
  State<CardPokemon> createState() => _CardPokemonState();
}

class _CardPokemonState extends State<CardPokemon> {
  _CardPokemonController controller = _CardPokemonController();
  // // goToDetailPage() {
  // //   Navigator.of(context).pushReplacementNamed('/detail');
  // }

  @override
  void initState() {
    controller.load(widget.modelPokemon);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: ((context, child) {
        return controller.modelPokemonDetail == null
            ? const CircularProgressIndicator(
                color: Colors.amber,
              )
            : _CardPokemonView(
                modelPokemonDetail: controller.modelPokemonDetail!,
                onTap: () =>
                    Navigator.of(context).pushReplacementNamed('/detail'),
              );
      }),
    );
  }
}

class _CardPokemonController extends ChangeNotifier {
  ModelPokemonDetail? _modelPokemonDetail;
  ModelPokemonDetail? get modelPokemonDetail => _modelPokemonDetail;
  set modelPokemonDetail(ModelPokemonDetail? value) {
    _modelPokemonDetail = value;
    notifyListeners();
  }

  load(ModelPokemon modelPokemon) async {
    ServicePokemon servicePokemon = ServicePokemon();
    modelPokemonDetail = await servicePokemon.getPokemonDetail(modelPokemon);
  }
}

class _CardPokemonView extends StatelessWidget {
  final ModelPokemonDetail modelPokemonDetail;
  final Function() onTap;
  const _CardPokemonView({
    Key? key,
    required this.modelPokemonDetail,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200.0,
          height: 200.0,
          child: InkWell(
            onTap: onTap,
            child: Card(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(modelPokemonDetail.nome),
                          const Text("Tipo"),
                          Text("COD #${modelPokemonDetail.id}")
                        ],
                      ),
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: SizedBox(
                        child: Image.asset(
                          "assets/imagens/logo.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
        )
      ],
    );
  }
}
