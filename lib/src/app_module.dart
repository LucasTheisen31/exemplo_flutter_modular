import 'package:flutter_modular/flutter_modular.dart';
import 'package:praia_site/src/modules/home/home_module.dart';
import 'package:praia_site/src/modules/login/login_module.dart';

// Modulo principal da aplicação.
// Todas as dependências injetadas no módulo principal, estarão disponíveis em todos os módulos.

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        // Bind : Serve para injetar dependências.
      ];

  @override
  List<ModularRoute> get routes => [
        // ChildRoute : Serve para construir um Widget.
        // ModuleRoute : Concatena outro módulo.
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
        //ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
