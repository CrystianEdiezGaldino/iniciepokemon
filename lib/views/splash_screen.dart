import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 900), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 150.0,
        height: 150.0,
        // child: Image.asset("assets/imagens/logo.png"),
        child: SvgPicture.asset(
          "assets/imagens/logo.svg",
        ),
      ),
    ));
  }
}
