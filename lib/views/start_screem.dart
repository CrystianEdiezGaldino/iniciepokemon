import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inicie_pokemon/model/model_pokemon.dart';

import '../widgets/card_pokemos.dart';
import '../widgets/filters_type.dart';
import '../widgets/navibar.dart';
import '../widgets/txt_form.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  double sizeicon = 20.0;
  // ServicePokemon controller = ServicePokemon();
  List<ModelPokemon> listaMaisProcurados = [
    ModelPokemon(
        name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/"),
    ModelPokemon(name: "ivysaur", url: "https://pokeapi.co/api/v2/pokemon/2/"),
    ModelPokemon(name: "venusaur", url: "https://pokeapi.co/api/v2/pokemon/3/"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(248, 241, 241, 241),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 88.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 100.0,
                          height: 100.0,
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              image: const ExactAssetImage(
                                  "assets/imagens/grid.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.menu,
                            size: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          Image.asset(
                            "assets/imagens/logo.png",
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.amber,
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(241, 176, 179, 90),
                          borderRadius: BorderRadius.all(Radius.circular(
                                  20.0) //                 <--- border radius here
                              ),
                        ),
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 27.0, left: 14.0),
                                  child: Text(
                                    "Pokedéx",
                                    style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          color:
                                              Color.fromRGBO(47, 62, 119, 41),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                // ignore: prefer_const_constructors
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 14.0, top: 5.0),
                                  child: Text(
                                    "Todas as estécies dde pokemons \n estão esperando por você!",
                                    style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromRGBO(47, 62, 119, 41),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  // ignore: prefer_const_constructors
                                  decoration: BoxDecoration(
                                    // ignore: prefer_const_constructors
                                    image: DecorationImage(
                                      image: const ExactAssetImage(
                                          "assets/imagens/imgpikachu.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const TextFormSeach(),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text("Tipo"),
                      ),
                      // ignore: prefer_const_constructors
                      const FilterWidget(),
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Text("Mais Procurados"),
                      ),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listaMaisProcurados.length,
                          itemBuilder: (context, index) => CardPokemon(
                              modelPokemon: listaMaisProcurados[index]),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const NaviBar(),
      ),
    );
  }
}
