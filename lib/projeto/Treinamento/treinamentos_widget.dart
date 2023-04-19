import 'package:flutter/material.dart';

class TreinamentoWidgets {
  BuildContext context;
  TreinamentoWidgets(this.context);

  Widget gruposMusculares(String titulo, String imagem, Function()? onTap) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
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
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget botaoAdicionarTreino() {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
      height: altura * 0.07,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(elevation: 5, shape: CircleBorder()),
          onPressed: () {},
          child: Icon(Icons.add)),
    );
  }
}
