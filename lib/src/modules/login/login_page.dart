import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import './login_controller.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller;

  const LoginPage({
    Key? key,
    required LoginController controller,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Modular.to.navigate = Navegue para uma nova tela. Esta ação substitui todas as rotas anteriores.
                Modular.to.navigate('/home', arguments: 'Passando argumentos pelo Data');
              },
              child: const Text('Pelo Data'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Modular.to.navigate = Navegue para uma nova tela. Esta ação substitui todas as rotas anteriores.
                Modular.to.navigate('/home/?query=Pesssoa&order=id');
              },
              child: const Text('Passando paramentro como Query Params'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Modular.to.navigate = Navegue para uma nova tela. Esta ação substitui todas as rotas anteriores.
                Modular.to.navigate('/home/123');
              },
              child: const Text('Passando paramentro como Path'),
            ),
          ],
        ),
      ),
    );
  }
}
