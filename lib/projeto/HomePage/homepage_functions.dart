import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:teste5/projeto/all_json_files/json.dart';
import 'package:http/http.dart' as http;
import '../Alimentacao/alimentacao_page.dart';
import '../Treinamento/treinamentos_page.dart';

class HomePageFunctions {
  BuildContext context;

  HomePageFunctions(this.context);
  Future homepageNavigator(JsonHome info) async {
    if (info.titulo == 'Alimentação') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AlimentacaoPage()),
      );
    } else if (info.titulo == 'Treinamento') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const TreinamentosPage()),
      );
    }
  }

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
}
