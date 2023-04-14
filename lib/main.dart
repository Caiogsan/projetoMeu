import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste5/globals/globals.dart';
import 'package:teste5/projeto/Alimentacao/store/controller_store.dart';
import 'package:teste5/projeto/HomePage/homePage_page.dart';
import 'package:teste5/projeto/loginPage/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ControllerStore>(
          create: (_) => ControllerStore(),
        )
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
