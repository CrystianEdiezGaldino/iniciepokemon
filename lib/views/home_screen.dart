import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/btn_start.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/imagens/imglogo.svg"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Explore o mundo dos",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 26, 26, 41),
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Pokémos",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Color.fromARGB(255, 233, 87, 143),
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Descubra todas as espécies de Pokémons",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 26, 26, 41),
                                ),
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            BtnStart()
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, top: 20.0),
                child: Image.asset("assets/imagens/logo.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
