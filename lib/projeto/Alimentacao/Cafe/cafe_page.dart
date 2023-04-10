import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_widgetjson_class.dart';
import 'package:http/http.dart' as http;

class CafePage extends StatelessWidget {
  const CafePage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<List<JsonCafeComida>> getAllDataCafe() async {
      var url = 'https://api.jsonbin.io/v3/b/6414c81fc0e7653a0589ba4b';
      var response = await http.get(Uri.parse(url));
      var jsonData = json.decode(response.body);
      var jsonArray = jsonData['record']['json-cafe-comida'];

      List<JsonCafeComida> infos = [];
      for (var jsonDesgraca in jsonArray) {
        JsonCafeComida putaqpariu = JsonCafeComida(
            alimentos: jsonDesgraca['Alimentos'],
            calorias: jsonDesgraca['Calorias'],
            proteinas: jsonDesgraca['Proteinas'],
            carboidratos: jsonDesgraca['Carboidratos'],
            gorduras: jsonDesgraca['Gorduras']);
        infos.add(putaqpariu);
      }

      return infos;
    }

    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Café'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: altura * 0.018,
          ),
          const Text(
            'Café da tarde/manhã',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const Divider(
            color: Colors.black,
            height: 15,
            thickness: 3,
          ),
          Text(
            'Alimentos:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SingleChildScrollView(
            child: Container(
              height: altura * 0.35,
              width: largura * 0.9,
              child: FutureBuilder(
                future: getAllDataCafe(),
                builder: (_, snapshot) {
                  if (snapshot.hasData) {
                    List<JsonCafeComida> informac = snapshot.data!;
                    return ListView.builder(
                      itemBuilder: (_, index) {
                        JsonCafeComida info = informac[index];
                        return Column(
                          children: [
                            SizedBox(
                              height: altura * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                height: altura * 0.05,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Center(
                                    child: Text(info.alimentos.toString())),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: informac.length,
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
