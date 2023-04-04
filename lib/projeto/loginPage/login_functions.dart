import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../HomePage/homePage_page.dart';
import 'login_page.dart';

class LoginFunctions {
  BuildContext context;
  final _firebaseAuth = FirebaseAuth.instance;
  LoginFunctions(this.context);

  Future login() async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: emailController.text, password: senhaController.text);
      if (UserCredential != null) {
        // ignore: use_build_context_synchronously
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      }
    } on FirebaseException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Usuario não encontrado')));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Senha incorreta')));
      }
    }
  }
}
