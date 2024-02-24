import 'package:mobx/mobx.dart';
import 'package:praia_site/src/repositories/pessoa/pessoa_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PessoaRepository pessoaRepository;

  _HomeControllerBase(this.pessoaRepository);

  void init() {
    pessoaRepository.initRepo();
  }
}
