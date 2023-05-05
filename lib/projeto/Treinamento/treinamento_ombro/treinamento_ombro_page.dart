import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/treinamento_ombro/treinamento_ombro_function.dart';

import '../treinamento_peito/treinamentos_peito_jsonclass.dart';
import '../treinamentos_widget.dart';

class TreinamentoOmbro extends StatelessWidget {
  const TreinamentoOmbro({super.key});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
            future: getAllDataOmbro(),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                List<JsonExerciciosPeito> informac = snapshot.data!;
                return SizedBox(
                  height: altura * 1,
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
            }),
      ),
    );
  }
}
