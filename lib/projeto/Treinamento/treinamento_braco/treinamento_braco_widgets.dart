import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/treinamento_braco/treinamento_braco_functions.dart';

import '../treinamento_peito/treinamentos_peito_jsonclass.dart';
import '../treinamentos_widget.dart';

class TreinamentoBracoClasse {
  BuildContext context;

  TreinamentoBracoClasse(this.context);

  Widget treinamentoBiceps() {
    final altura = MediaQuery.of(context).size.height;
    return FutureBuilder(
        future: getAllDataBiceps(),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            List<JsonExerciciosPeito> informac = snapshot.data!;
            return SizedBox(
              height: altura * 0.4,
              child: ListView.builder(
                  itemCount: informac.length,
                  itemBuilder: (_, index) {
                    JsonExerciciosPeito info = informac[index];
                    return TreinamentoWidgets(context).exerciciosMusculares(
                        info.titulo.toString(), 'lib/icons/leg.png', () {});
                  }),
            );
          }
          return const Center(child: CircularProgressIndicator());
        });
  }

  Widget treinamentoTriceps() {
    final altura = MediaQuery.of(context).size.height;
    return FutureBuilder(
        future: getAllDataTriceps(),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            List<JsonExerciciosPeito> informac = snapshot.data!;
            return SizedBox(
              height: altura * 0.4,
              child: ListView.builder(
                  itemCount: informac.length,
                  itemBuilder: (_, index) {
                    JsonExerciciosPeito info = informac[index];
                    return TreinamentoWidgets(context).exerciciosMusculares(
                        info.titulo.toString(), 'lib/icons/leg.png', () {});
                  }),
            );
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
