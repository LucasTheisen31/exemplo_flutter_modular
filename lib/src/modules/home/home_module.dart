import 'package:flutter_modular/flutter_modular.dart';
import 'package:praia_site/src/repositories/pessoa/pessoa_repository.dart';
import 'package:praia_site/src/repositories/pessoa/pessoa_repository_impl.dart';
import '../core/core_module.dart';
import './home_controller.dart';
import './home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<PessoaRepository>((i) => PessoaRepositoryImpl(compartilhadoRepository: Modular.get())),
    Bind.lazySingleton((i) => HomeController(Modular.get())),
  ];

  @override
  List<Module> get imports => [
        // Importa outros modules que este module depende - Importa os binds do CoreModule
        CoreModule(),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage(controller: Modular.get())),
    ChildRoute('/:id', child: (_, args) => HomePage(controller: Modular.get())),
  ];
}
