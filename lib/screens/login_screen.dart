import 'package:flutter/material.dart';
import 'package:agendapro_oficial/service/authService.dart'; // Certifique-se de que o caminho está correto

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authService = AuthService(); // Instancia o serviço de autenticação

  bool _isLoading = false; // Para exibir um indicador de carregamento

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator() // Indicador de carregamento
            : ElevatedButton(
          onPressed: () async {
            setState(() {
              _isLoading = true;
            });

            try {
              // Chama a função de login do AuthService
              final userCredential = await authService.loginWithFacebook();
              if (userCredential != null) {
                // Navega para a tela principal após login bem-sucedido
                Navigator.pushReplacementNamed(context, '/home');
              } else {
                // Mostra mensagem de erro
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Erro no login. Por favor, tente novamente.'),
                  ),
                );
              }
            } catch (e) {
              // Trata erros e exibe mensagem ao usuário
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Erro inesperado: $e'),
                ),
              );
            } finally {
              setState(() {
                _isLoading = false;
              });
            }
          },
          child: const Text('Login com Facebook'),
        ),
      ),
    );
  }
}
