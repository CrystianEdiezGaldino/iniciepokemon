import 'package:flutter/material.dart';
import 'package:inicie_pokemon/widgets/navibar.dart';

class DetailPage extends StatefulWidget {
  final int id;
  const DetailPage({Key? key, required this.id}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(248, 241, 241, 241),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color.fromARGB(31, 156, 36, 86),
                height: 420,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context)
                              .pushReplacementNamed('/start'),
                          child: const Icon(
                            Icons.arrow_back_ios_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        Image.asset(
                          "assets/imagens/logo.png",
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.amber,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 250,
                      child: Center(
                        child: Image.network(
                          "https://www.pngplay.com/wp-content/uploads/10/Pokemon-PNG-Free-File-Download.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Name"),
                  IconButton(
                    iconSize: 18,
                    icon: const Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 190, 190, 190),
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 18,
                    icon: const Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 190, 190, 190),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("COD #0001"),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: const BoxDecoration(
                      boxShadow: [],
                      color: Color.fromARGB(255, 233, 87, 143),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Text("Fogo"),
                    ),
                  ),
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("Descrição"),
                  const Text(
                      "bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla \n bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla bla bla bla vla ")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 100.0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Vida"),
                          Container(
                            width: 150,
                            height: 15,
                            color: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Defesa"),
                          Container(
                            width: 150,
                            height: 15,
                            color: Colors.green,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Ataque"),
                          Container(
                            width: 150,
                            height: 15,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NaviBar(),
      ),
    );
  }
}
