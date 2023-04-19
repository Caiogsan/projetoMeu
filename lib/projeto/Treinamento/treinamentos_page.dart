import 'package:flutter/material.dart';
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
                    .gruposMusculares('Full', 'lib/icons/exercise.png', () {}),
                TreinamentoWidgets(context)
                    .gruposMusculares('Peito', 'lib/icons/chest.png', () {}),
                TreinamentoWidgets(context)
                    .gruposMusculares('Perna', 'lib/icons/leg.png', () {}),
                TreinamentoWidgets(context)
                    .gruposMusculares('Costas', 'lib/icons/back.png', () {}),
                TreinamentoWidgets(context)
                    .gruposMusculares('Braço', 'lib/icons/arms.png', () {}),
                TreinamentoWidgets(context)
                    .gruposMusculares('Ombro', 'lib/icons/arms.png', () {}),
                TreinamentoWidgets(context)
                    .gruposMusculares('Cardio', 'lib/icons/chest.png', () {}),
                TreinamentoWidgets(context).gruposMusculares(
                    'Alongamentos', 'lib/icons/chest.png', () {}),
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
