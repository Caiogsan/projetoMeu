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
            height: altura * 0.065,
          ),
          Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(info.imagem.toString()),
                      fit: BoxFit.cover),
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(15)),
              height: altura * 0.14,
              width: largura * 0.9,
              child: Container(
                margin: EdgeInsets.only(right: largura * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: largura * 0.02),
                      child: Text(
                        info.titulo.toString(),
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: altura * 0.03,
          )
        ],
      ),
    );
  }
}
