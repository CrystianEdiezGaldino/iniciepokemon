import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/services.dart';

import 'app_widget.dart';
import 'appmodule.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,

    // defini o app para não girar a tela
  ]);
  return runApp(
    ModularApp(module: AppModule(), child: const AppWidget()),
  );
}
