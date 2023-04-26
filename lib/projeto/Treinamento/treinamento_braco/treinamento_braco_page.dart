import 'package:flutter/material.dart';

import 'package:teste5/projeto/Treinamento/treinamento_braco/treinamento_braco_widgets.dart';

class TreinamentoBraco extends StatelessWidget {
  const TreinamentoBraco({super.key});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: altura * 0.02),
            child: const Text(
              'Bíceps',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          SizedBox(
            height: altura * 0.005,
          ),
          TreinamentoBracoClasse(context).treinamentoBiceps(),
          Padding(
            padding: EdgeInsets.only(top: altura * 0.03),
            child: const Text(
              'Tríceps',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          SizedBox(
            height: altura * 0.02,
          ),
          TreinamentoBracoClasse(context).treinamentoTriceps()
        ],
      ),
    ));
  }
}
