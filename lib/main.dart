import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:teste5/projeto/HomePage/homePage_page.dart';
import 'package:teste5/projeto/loginPage/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageLogin(),
    );
  }
}

class HomePageLogin extends StatefulWidget {
  const HomePageLogin({super.key});

  @override
  State<HomePageLogin> createState() => _HomePageLoginState();
}

class _HomePageLoginState extends State<HomePageLogin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePage(),
      resizeToAvoidBottomInset: false,
    );
  }
}
