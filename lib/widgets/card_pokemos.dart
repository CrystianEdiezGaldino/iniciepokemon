import 'package:flutter/material.dart';

class CarsPokemons extends StatefulWidget {
  const CarsPokemons({
    Key? key,
  }) : super(key: key);

  @override
  State<CarsPokemons> createState() => _CarsPokemonsState();
}

class _CarsPokemonsState extends State<CarsPokemons> {
  goToDetailPage() {
    Navigator.of(context).pushReplacementNamed('/detail');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 180.0,
          height: 180.0,
          child: InkWell(
            onTap: () => goToDetailPage(),
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
                          const Text("Nome"),
                          const Text("Tipo"),
                          const Text("#COD")
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
