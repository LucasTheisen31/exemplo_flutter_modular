import 'package:praia_site/src/repositories/compartilhado/compartilhado_repository.dart';

abstract class PessoaRepository {
  final CompartilhadoRepository compartilhadoRepository;

  PessoaRepository({required this.compartilhadoRepository});

  void initRepo();
}
