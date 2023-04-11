import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'cafe_widgetjson_class.dart';

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

Future<List<JsonCafeBebida>> getAllDataCafeBebida() async {
  var url = 'https://api.jsonbin.io/v3/b/6414c81fc0e7653a0589ba4b';
  var response = await http.get(Uri.parse(url));
  var jsonData = json.decode(response.body);
  var jsonArray = jsonData['record']['json-cafe-bebida'];

  List<JsonCafeBebida> infos = [];
  for (var jsonDesgraca in jsonArray) {
    JsonCafeBebida putaqpariu = JsonCafeBebida(
        alimentos: jsonDesgraca['Alimentos'],
        calorias: jsonDesgraca['Calorias'],
        proteinas: jsonDesgraca['Proteinas'],
        carboidratos: jsonDesgraca['Carboidratos'],
        gorduras: jsonDesgraca['Gorduras']);
    infos.add(putaqpariu);
  }

  return infos;
}
