import 'package:flutter/cupertino.dart';

import 'compartilhado_repository.dart';

class CompartilhadoRepositoryImpl implements CompartilhadoRepository {
  @override
  void initRepo() {
    debugPrint('Chamou o initRepo() do CompartilhadoRepositoryImpl');
  }
}
