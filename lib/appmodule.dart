import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:inicie_pokemon/views/detail_screen.dart';
import 'package:inicie_pokemon/views/home_screen.dart';
import 'package:inicie_pokemon/views/splash_screen.dart';
import 'package:inicie_pokemon/views/start_screem.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind(((i) => Dio())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SplashScreen(),
        ),
        ChildRoute(
          '/home',
          child: (context, args) => const HomeScreen(),
        ),
        ChildRoute(
          '/start',
          child: (context, args) => const StartScreen(),
        ),
        ChildRoute(
          '/detail',
          child: (context, args) => const DetailPage(
            id: 10,
          ),
        ),
      ];
}
