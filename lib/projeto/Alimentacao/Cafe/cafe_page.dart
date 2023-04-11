// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_widget.dart';

import 'package:teste5/projeto/Alimentacao/Cafe/cafe_widgetjson_class.dart';

import 'cafe_functions.dart';

class Item {
  String headerText;
  String expandedText;
  bool isExpanded;
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
}

class CafePage extends StatefulWidget {
  const CafePage({super.key});

  @override
  State<CafePage> createState() => _CafePageState();
}

class _CafePageState extends State<CafePage> {
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Café'),
      ),
      body: Column(
        children: [CafeWidget()],
      ),
    );
  }
}
