import 'package:flutter/material.dart';
import 'package:spotify/widgets/bottom_nav_bar.dart';
import 'package:spotify/widgets/spo_button.dart';
import 'package:spotify/widgets/spo_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController name = TextEditingController();
TextEditingController password = TextEditingController();

bool oscuro = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Correo electrónico o nombre de usuario',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
            const SizedBox(height: 8.0),
            SpoTextField(
              controller: name,
              onChanged: (value) => setState(() {}),
            ),
            const SizedBox(height: 32.0),
            const Text('Contraseña',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
            const SizedBox(height: 8.0),
            SpoTextField(
              controller: password,
              oscuro: oscuro,
              mostrarContra: () {
                oscuro = !oscuro;
                setState(() {});
              },
              onChanged: (value) => setState(() {}),
            ),
            const SizedBox(height: 32.0),
            Center(
              child: name.text != '' && password.text != ''
                  ? SpoButton(
                      title: 'Iniciar sesión',
                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BottomNavBar()))
                    )
                  : const SpoButton(title: 'Iniciar sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
