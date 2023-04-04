import 'package:flutter/material.dart';
import 'package:teste5/projeto/all_json_files/json.dart';

import 'homepage_functions.dart';

class HomeWidget {
  BuildContext context;

  HomeWidget(this.context);

  Widget botaoHome(JsonHome info, largura, altura) {
    return GestureDetector(
      onTap: () async {
        await HomePageFunctions(context).homepageNavigator(info);
      },
      child: Column(
        children: [
          SizedBox(
            height: altura * 0.11,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 252, 1).withOpacity(0.5),
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
            child: Center(child: Text(info.titulo.toString())),
          ),
          SizedBox(
            height: altura * 0.03,
          )
        ],
      ),
    );
  }
}
