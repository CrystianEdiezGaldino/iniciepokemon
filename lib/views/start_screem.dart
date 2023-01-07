import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(248, 241, 241, 241),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
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
                  height: 200,
                  color: const Color.fromARGB(19, 247, 75, 127),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text("Pokedéx"),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                              "Todas as estécies dde pokemons \n estão esperando por você!"),
                          SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: Image.network(
                                "https://www.pngplay.com/wp-content/uploads/11/Pikachu-Pokemon-Free-PNG.png"),
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
                const CarsPokemons(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NaviBar(),
      ),
    );
  }
}
