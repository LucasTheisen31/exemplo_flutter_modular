import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required HomeController controller,
  }) : _controller = controller;

  final HomeController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Parametro da rota pelo "Modular.args.data": ${Modular.args.data}'), // Ideal para passar objetos completos, como um model. Ex: /home, arguments: PessoaModel()
            Text('Parametro da rota pelo "Modular.args.queryParams": ${Modular.args.queryParams.toString()}'), // Ideal para passar parametros de busca como filtros. Ex: /home?query=Pessoa&order=id
            Text('Parametro da rota pelo "Modular.args.params": ${Modular.args.params.toString()}'), // Ideal para passar parametros na rota como id. Ex: /home/123
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _controller.init,
              child: const Text('Controller.init()'),
            ),
          ],
        ),
      ),
    );
  }
}
