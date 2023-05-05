import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/treinamento_perna/treinamento_perna_functions.dart';

import '../../../treinamento_peito/treinamentos_peito_jsonclass.dart';
import '../../../treinamentos_widget.dart';

class TreinamentoPernaAdd extends StatelessWidget {
  const TreinamentoPernaAdd({super.key});

  @override
  Widget build(BuildContext context) {
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
                        return TreinamentoWidgets(context)
                            .exerciciosMuscularesAdd(info.titulo.toString(),
                                'lib/icons/leg.png', () {});
                      }),
                );
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
