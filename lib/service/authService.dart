import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> loginWithFacebook() async {
    try {
      // Login com Facebook
      final result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        // Pegando as credenciais
        final facebookCredential = FacebookAuthProvider.credential(result.accessToken!.token);

        // Login no Firebase com as credenciais do Facebook
        final userCredential = await _firebaseAuth.signInWithCredential(facebookCredential);

        return userCredential.user;
      } else {
        print('Falha no login com Facebook: ${result.message}');
        return null;
      }
    } catch (e) {
      print('Erro ao fazer login com Facebook: $e');
      return null;
    }
  }

  Future<void> logout() async {
    try {
      await FacebookAuth.instance.logOut();
      await _firebaseAuth.signOut();
    } catch (e) {
      print('Erro ao fazer logout: $e');
    }
  }
}
