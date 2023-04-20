import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/treinamento_alongamento/treinamento_alongamento_page.dart';
import 'package:teste5/projeto/Treinamento/treinamento_braco/treinamento_braco_page.dart';
import 'package:teste5/projeto/Treinamento/treinamento_cardio/treinamento_cardio_page.dart';
import 'package:teste5/projeto/Treinamento/treinamento_costas/treinamento_costas_page.dart';
import 'package:teste5/projeto/Treinamento/treinamento_full/treinamento_full_page.dart';
import 'package:teste5/projeto/Treinamento/treinamento_ombro/treinamento_ombro_page.dart';
import 'package:teste5/projeto/Treinamento/treinamento_peito/treinamentos_peito.dart';
import 'package:teste5/projeto/Treinamento/treinamento_perna/treinamento_perna_page.dart';
import 'package:teste5/projeto/Treinamento/treinamentos_widget.dart';

class TreinamentosPage extends StatelessWidget {
  const TreinamentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(width: 1))),
              width: largura * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {}, child: Text('Grupo de Musculos')),
                  SizedBox(
                    width: largura * 0.08,
                  ),
                  TextButton(onPressed: () {}, child: Text('Musculos'))
                ],
              ),
            ),
            Column(
              children: [
                TreinamentoWidgets(context)
                    .gruposMusculares('Full', 'lib/icons/exercise.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoFull()),
                  );
                }),
                TreinamentoWidgets(context)
                    .gruposMusculares('Peito', 'lib/icons/chest.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoPeito()),
                  );
                }),
                TreinamentoWidgets(context)
                    .gruposMusculares('Perna', 'lib/icons/leg.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoPerna()),
                  );
                }),
                TreinamentoWidgets(context)
                    .gruposMusculares('Costas', 'lib/icons/back.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoCostas()),
                  );
                }),
                TreinamentoWidgets(context)
                    .gruposMusculares('Braço', 'lib/icons/arms.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoBraco()),
                  );
                }),
                TreinamentoWidgets(context)
                    .gruposMusculares('Ombro', 'lib/icons/arms.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoOmbro()),
                  );
                }),
                TreinamentoWidgets(context)
                    .gruposMusculares('Cardio', 'lib/icons/chest.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinamentoCardio()),
                  );
                }),
                TreinamentoWidgets(context).gruposMusculares(
                    'Alongamentos', 'lib/icons/chest.png', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TreinoAlongamento()),
                  );
                }),
                SizedBox(
                  height: altura * 0.12,
                ),
                TreinamentoWidgets(context).botaoAdicionarTreino()
              ],
            )
          ],
        ),
      ),
    );
  }
}
