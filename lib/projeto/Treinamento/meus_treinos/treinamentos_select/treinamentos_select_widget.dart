import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_alongamentos/treinamentos_alongs_page.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_bracos/treinamentos_bracos_page.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_cadio/treinamentos_cardio_page.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_costas/treinamentos_costas_page.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_ombros/treinamentos_ombro_page.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_peito/treinamento_select_peito_page.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_perna/treinamentos_perna_page.dart';

import '../../treinamento_alongamento/treinamento_alongamento_page.dart';
import '../../treinamento_braco/treinamento_braco_page.dart';
import '../../treinamento_cardio/treinamento_cardio_page.dart';
import '../../treinamento_costas/treinamento_costas_page.dart';
import '../../treinamento_full/treinamento_full_page.dart';
import '../../treinamento_ombro/treinamento_ombro_page.dart';
import '../../treinamento_peito/treinamentos_peito.dart';
import '../../treinamento_perna/treinamento_perna_page.dart';
import '../../treinamentos_widget.dart';

class TreinamentosSelectWidgets {
  BuildContext context;

  TreinamentosSelectWidgets(this.context);

  Widget paginaTreino() {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            children: [
              gruposMuscularesSelect('Full', 'lib/icons/exercise.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoFull()),
                );
              }),
              gruposMuscularesSelect('Peito', 'lib/icons/chest.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoPeitoAdd()),
                );
              }),
              gruposMuscularesSelect('Perna', 'lib/icons/leg.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoPernaAdd()),
                );
              }),
              gruposMuscularesSelect('Costas', 'lib/icons/back.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoCostasAdd()),
                );
              }),
              gruposMuscularesSelect('Braço', 'lib/icons/arms.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoBracoAdd()),
                );
              }),
              gruposMuscularesSelect('Ombro', 'lib/icons/arms.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoOmbroAdd()),
                );
              }),
              gruposMuscularesSelect('Cardio', 'lib/icons/chest.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinamentoCardioAdd()),
                );
              }),
              gruposMuscularesSelect('Alongamentos', 'lib/icons/chest.png', () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreinoAlongamentoAdd()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget gruposMuscularesSelect(
      String titulo, String imagem, Function()? onTap) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
      decoration:
          const BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(height: altura * 0.1139999, child: Image.asset(imagem)),
            SizedBox(
              width: largura * 0.05,
            ),
            Text(
              titulo,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
