import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/treinamento_perna/treinamento_perna_functions.dart';

import '../treinamento_peito/treinamentos_peito_jsonclass.dart';
import '../treinamentos_widget.dart';

class TreinamentoPerna extends StatelessWidget {
  const TreinamentoPerna({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: getAllDataPerna(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                List<JsonExerciciosPeito> informac = snapshot.data!;
                return SizedBox(
                  height: altura * 0.9,
                  child: ListView.builder(
                      itemCount: informac.length,
                      itemBuilder: (_, index) {
                        JsonExerciciosPeito info = informac[index];
                        return TreinamentoWidgets(context).exerciciosMusculares(
                            info.titulo.toString(), 'lib/icons/leg.png', () {});
                      }),
                );
              }
              return Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
