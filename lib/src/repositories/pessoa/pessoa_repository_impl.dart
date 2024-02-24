import 'package:flutter/cupertino.dart';
import 'package:praia_site/src/repositories/compartilhado/compartilhado_repository.dart';
import 'package:praia_site/src/repositories/pessoa/pessoa_repository.dart';

class PessoaRepositoryImpl implements PessoaRepository {
  @override
  final CompartilhadoRepository compartilhadoRepository;

  PessoaRepositoryImpl({required this.compartilhadoRepository});

  @override
  void initRepo() {
    debugPrint('Chamou o initRepo() do PessoaRepositoryImpl');
    compartilhadoRepository.initRepo();
  }
}
