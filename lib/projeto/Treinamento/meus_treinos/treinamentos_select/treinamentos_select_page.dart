import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_widget.dart';

class TreinamentosSelect extends StatelessWidget {
  const TreinamentosSelect({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(child: TreinamentosSelectWidgets(context).paginaTreino()),
    );
  }
}
