import 'package:flutter/material.dart';
import '../service/authService.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final user = await AuthService().loginWithFacebook();
            if (user != null) {
              Navigator.pushReplacementNamed(context, '/home');
            } else {
              print('Falha no login.');
            }
          },
          child: Text('Login com Facebook'),
        ),
      ),
    );
  }
}
