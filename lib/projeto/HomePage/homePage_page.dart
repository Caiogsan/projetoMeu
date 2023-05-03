import 'package:flutter/material.dart';

import 'package:teste5/globals/globals.dart';

import 'package:teste5/projeto/HomePage/homepage_functions.dart';
import 'package:teste5/projeto/HomePage/homepage_widgets.dart';

import 'package:teste5/projeto/all_json_files/json.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/background.png'))),
        height: altura * 1,
        width: largura,
        child: FutureBuilder(
            future: HomePageFunctions(context).getAllData(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                List<JsonHome> informac = snapshot.data!;
                return ListView.builder(
                    itemCount: informac.length,
                    itemBuilder: (_, index) {
                      JsonHome info = informac[index];

                      return HomeWidget(context)
                          .botaoHome(info, largura, altura);
                    });
              }
              return GlobalsWidgets(context).loadingGlobal();
            }),
      ),
    );
  }
}
