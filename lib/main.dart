import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './src/app_module.dart';
import './src/app_widget.dart';

void main() {
  return runApp(
    ModularApp(
      module: AppModule(), // Módulo principal da aplicação
      child: const AppWidget(), // Widget principal que posssui o MaterialApp ou CupertinoApp
    ),
  );
}
