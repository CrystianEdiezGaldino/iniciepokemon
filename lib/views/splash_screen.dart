// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

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
        child: Image.asset(
          "assets/imagens/logo.png",
        ),
      ),
    ));
  }
}
