import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:teste5/globals/globals.dart';
import 'package:teste5/projeto/Alimentacao/alimentacao_page.dart';
import 'package:teste5/projeto/HomePage/homepage_functions.dart';
import 'package:teste5/projeto/HomePage/homepage_widgets.dart';
import 'package:teste5/projeto/Treinamento/treinamentos_page.dart';
import 'package:teste5/projeto/all_json_files/json.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(230, 228, 228, 0.8),
        title: Center(
            child: Text(
          'MINHAS COISAS',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Container(
        color: Colors.black12,
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
