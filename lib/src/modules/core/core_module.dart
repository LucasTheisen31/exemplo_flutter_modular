import 'package:flutter_modular/flutter_modular.dart';
import 'package:praia_site/src/repositories/compartilhado/compartilhado_repository.dart';

import '../../repositories/compartilhado/compartilhado_repository_impl.dart';

class CoreModule extends Module {
  // Injeta as dependências necessárias e exporta o CompartilhadoRepository para que outros modules possam acessá-lo
  // Quando definimos um export: true, estamos dizendo que o bind somente será exportado para os módulos que importarem o módulo atual
  // Quando exportamos um bind, ele não pode mais ser encontrado no módulo atual, somente nos módulos que importarem o módulo atual
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<CompartilhadoRepository>((i) => CompartilhadoRepositoryImpl(), export: true),
      ];
}
