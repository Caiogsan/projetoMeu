import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teste5/projeto/registerPage/register_page.dart';

import '../HomePage/homePage_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController senhaController = TextEditingController();

    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final _firebaseAuth = FirebaseAuth.instance;

    login() async {
      try {
        UserCredential userCredential =
            await _firebaseAuth.signInWithEmailAndPassword(
                email: emailController.text, password: senhaController.text);
        if (UserCredential != null) {
          // ignore: use_build_context_synchronously
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
      } on FirebaseException catch (e) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Usuario não encontrado')));
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Senha incorreta')));
        }
      }
      ;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: FutureBuilder(
        builder: (context, snapshot) {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image.png"), fit: BoxFit.cover)),
            child: Center(
              child: Container(
                width: largura * 0.85,
                height: altura * 0.5,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                    borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: altura * 0.09,
                    ),
                    const Text(
                      'BEM VINDO DE VOLTA',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: altura * 0.07,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 49, 219, 52),
                            )),
                        width: largura * 0.75,
                        height: altura * 0.05,
                        child: Padding(
                          padding: EdgeInsets.only(left: largura * 0.03),
                          child: TextField(
                            controller: emailController,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(181, 181, 181, 0.7)),
                            decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(228, 216, 216, 0.7))),
                          ),
                        )),
                    SizedBox(
                      height: altura * 0.03,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 2,
                              color: const Color.fromARGB(255, 49, 219, 52),
                            )),
                        width: largura * 0.75,
                        height: altura * 0.05,
                        child: Padding(
                          padding: EdgeInsets.only(left: largura * 0.03),
                          child: TextField(
                            controller: senhaController,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color.fromRGBO(181, 181, 181, 0.7)),
                            decoration: const InputDecoration(
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Senha',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(228, 216, 216, 0.7))),
                          ),
                        )),
                    SizedBox(
                      height: altura * 0.05,
                    ),
                    SizedBox(
                        width: largura * 0.6,
                        height: altura * 0.05,
                        child: ElevatedButton(
                          onPressed: () {
                            login();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black87,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Text('Login'),
                        )),
                    SizedBox(
                      height: altura * 0.02,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: largura * 0.39),
                        height: altura * 0.025,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(255, 255, 255, 0.3)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()));
                            },
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w800),
                            )))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
