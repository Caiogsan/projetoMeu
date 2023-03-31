import 'package:flutter/material.dart';
import 'package:teste5/projeto/globals.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: largura * 0.85,
          height: altura * 0.5,
          decoration: BoxDecoration(
            color: Color.fromRGBO(181, 181, 181, 1).withOpacity(1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BEM-VINDO ',
                style: TextStyle(color: Globals.primaryColor),
              ),
              TextField(),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
