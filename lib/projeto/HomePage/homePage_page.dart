import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:teste5/projeto/Alimentacao/alimentacao_page.dart';
import 'package:teste5/projeto/all_json_files/json.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<JsonHome>> getAllData() async {
      var url = 'https://api.jsonbin.io/v3/b/6414c81fc0e7653a0589ba4b';
      var response = await http.get(Uri.parse(url));
      var jsonData = json.decode(response.body);
      var jsonArray = jsonData['record']['json-home'];

      List<JsonHome> infos = [];
      for (var jsonDesgraca in jsonArray) {
        JsonHome putaqpariu = JsonHome(titulo: jsonDesgraca['titulo']);
        infos.add(putaqpariu);
      }

      return infos;
    }

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
            future: getAllData(),
            builder: (BuildContext context, snapshot) {
              if (snapshot.hasData) {
                List<JsonHome> informac = snapshot.data!;
                return ListView.builder(
                    itemCount: informac.length,
                    itemBuilder: (BuildContext context, index) {
                      JsonHome info = informac[index];

                      return GestureDetector(
                        onTap: () {
                          if (info.titulo == 'Alimentação') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AlimentacaoPage()),
                            );
                          } else if (info.titulo == 'Treinamento') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AlimentacaoPage()),
                            );
                          }
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: altura * 0.11,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 50, 252, 1)
                                      .withOpacity(0.5),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 1.5,
                                        blurRadius: 1,
                                        color: Colors.grey.withOpacity(0.5),
                                        offset: Offset(-2, 2))
                                  ],
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(15)),
                              height: altura * 0.05,
                              width: largura * 0.9,
                              child:
                                  Center(child: Text(info.titulo.toString())),
                            ),
                            SizedBox(
                              height: altura * 0.03,
                            )
                          ],
                        ),
                      );
                    });
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}
