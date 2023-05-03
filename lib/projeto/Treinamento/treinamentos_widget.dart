import 'package:flutter/material.dart';

import 'meus_treinos/meus_treinos_page.dart';

class TreinamentoWidgets {
  BuildContext context;
  TreinamentoWidgets(this.context);

  Widget gruposMusculares(String titulo, String imagem, Function()? onTap) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              SizedBox(height: altura * 0.065, child: Image.asset(imagem)),
              SizedBox(
                width: largura * 0.05,
              ),
              Text(
                titulo,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cardOpcoes(String titulo, String subtitulo) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        if (titulo == 'Meus') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TreinosPage()),
          );
        }
      },
      child: Material(
        elevation: 10,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: Container(
          height: altura * 0.17,
          width: largura * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                  image: AssetImage('assets/10.png'), fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.only(left: largura * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(
                  height: altura * 0.01,
                ),
                Text(
                  subtitulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                SizedBox(
                  height: altura * 0.01,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget exerciciosMusculares(String titulo, String imagem, Function()? onTap) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              SizedBox(height: altura * 0.055, child: Image.asset(imagem)),
              SizedBox(
                width: largura * 0.05,
              ),
              Expanded(
                child: Text(
                  titulo,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              InkWell(
                child: const Icon(
                  Icons.add,
                  size: 25.0,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
