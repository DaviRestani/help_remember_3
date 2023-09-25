import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.pink),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 400,
              height: 150,
              child:
                  Icon(Icons.lock_reset_rounded, size: 100, color: Colors.pink),
            ),
            const Text(
              'Redefinir Senha',
              style: TextStyle(fontSize: 24),
            ),
            const Text(
              'Informe o e-mail para o qual deseja redefinir sua senha',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  labelText: 'E-mail',
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                  vertical: 20.0,
                ),
                backgroundColor: Colors.pink,
                shape: const StadiumBorder(),
                minimumSize: const Size(200.0, 20.0),
              ),
              onPressed: () {
                // Lógica para realizar o cadastro aqui
              },
              child: const Text(
                'Redefinir Senha',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
