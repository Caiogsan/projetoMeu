import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_widget.dart';

import '../Cafe/cafe_functions.dart';
import '../Cafe/cafe_page.dart';
import '../Cafe/cafe_widgetjson_class.dart';
import 'almoco_functions.dart';
import 'almoco_widgets.dart';

class AlmocoPage extends StatelessWidget {
  const AlmocoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Refeições'),
        ),
        body: AlmocoAlimento());
  }
}
