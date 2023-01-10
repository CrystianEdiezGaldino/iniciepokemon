import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BtnStart extends StatelessWidget {
  const BtnStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: InkWell(
        //botão pra cadastra um novo usuário
        onTap: () => Navigator.of(context).pushReplacementNamed('/start'),
        // RegisterPagerAssociado
        //FeedNewsTeste
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(-6, 5),
                spreadRadius: -2,
                blurRadius: 24,
                color: Color.fromRGBO(239, 85, 107, 1),
              ),
            ],
            color: Color.fromARGB(255, 234, 104, 108),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.80,
          height: 55,
          // ignore: prefer_const_constructors
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Center(
                child: Text(
                  'Começar',
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.only(left: 80.0, right: 10.0),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 30,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
