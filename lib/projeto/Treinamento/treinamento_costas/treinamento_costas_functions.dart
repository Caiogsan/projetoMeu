import 'dart:convert';

import '../treinamento_peito/treinamentos_peito_jsonclass.dart';
import 'package:http/http.dart' as http;

Future<List<JsonExerciciosPeito>> getAllDataCostas() async {
  var url = 'https://api.jsonbin.io/v3/b/6414c81fc0e7653a0589ba4b';
  var response = await http.get(Uri.parse(url));
  var jsonData = json.decode(response.body);
  var jsonArray = jsonData['record']['json-treinamento-costas'];

  List<JsonExerciciosPeito> infos = [];
  for (var jsonDesgraca in jsonArray) {
    JsonExerciciosPeito putaqpariu =
        JsonExerciciosPeito(titulo: jsonDesgraca['titulo']);
    infos.add(putaqpariu);
  }

  return infos;
}
