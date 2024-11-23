import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> loginWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        final AccessToken? accessToken = result.accessToken;

        if (accessToken != null) {
          // Obtém o token diretamente do objeto JSON
          final Map<String, dynamic> tokenData = accessToken.toJson();
          final String token = tokenData['token']; // Obtém o token do JSON

          final OAuthCredential credential =
          FacebookAuthProvider.credential(token);

          return await _auth.signInWithCredential(credential);
        }
      } else if (result.status == LoginStatus.cancelled) {
        print('Login cancelado pelo usuário.');
        return null;
      } else {
        print('Erro no login com Facebook: ${result.message}');
        return null;
      }
    } catch (e) {
      print('Erro no login com Facebook: $e');
      return null;
    }
    return null;
  }

  Future<void> logout() async {
    try {
      await _auth.signOut();
      await FacebookAuth.instance.logOut();
      print('Logout realizado com sucesso.');
    } catch (e) {
      print('Erro ao realizar logout: $e');
    }
  }
}
