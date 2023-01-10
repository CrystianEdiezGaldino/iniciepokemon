import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    Image.asset("assets/imagens/img_logo.png"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Explore o mundo dos",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 35,
                                      color: Color.fromRGBO(47, 62, 119, 41),
                                      fontWeight: FontWeight.w700)),
                            ),
                            Text(
                              "Pokémos",
                              style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 35,
                                      color: Color.fromARGB(255, 234, 104, 108),
                                      fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Descubra todas as espécies de Pokémons",
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(47, 62, 119, 41)),
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
