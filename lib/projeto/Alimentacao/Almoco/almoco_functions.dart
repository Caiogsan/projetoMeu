import 'dart:convert';

import '../Cafe/cafe_widgetjson_class.dart';
import 'package:http/http.dart' as http;

Future<List<JsonCafeComida>> getAllDataComida() async {
  var url = 'https://api.jsonbin.io/v3/b/6414c81fc0e7653a0589ba4b';
  var response = await http.get(Uri.parse(url));
  var jsonData = json.decode(response.body);
  var jsonArray = jsonData['record']['json-almoco-comida'];

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
