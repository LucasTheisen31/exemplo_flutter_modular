import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// Widget principaal
// Sua principal função é instanciar o MaterialApp ou CupertinoApp.
// Também é necessário definir o sistema de rotas personalizado
class AppWidget extends StatelessWidget {
  const AppWidget({super.key});
  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/login');

    return MaterialApp.router(
      title: 'Site Praia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      routeInformationParser: Modular.routeInformationParser, // Quem vai fazer o controle de rotas é o Modular
      routerDelegate: Modular.routerDelegate, // Delega a navegação para o Modular
      debugShowCheckedModeBanner: false,
    );
  }
}
