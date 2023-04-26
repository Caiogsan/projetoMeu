import 'package:flutter/material.dart';
import 'package:teste5/projeto/Alimentacao/alimentacao_widget.dart';

class AlimentacaoPage extends StatefulWidget {
  const AlimentacaoPage({super.key});

  @override
  State<AlimentacaoPage> createState() => _AlimentacaoPageState();
}

class _AlimentacaoPageState extends State<AlimentacaoPage> {
  dynamic horario;
  late DateTime horarioPaia = DateTime.now();
  @override
  void initState() {
    horario = horarioPaia.day.toString();
    super.initState();
  }

  void setPrazo() {
    setState(() {
      horarioPaia = horarioPaia.add(const Duration(days: 1));
      horario = horarioPaia.day.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: largura * 0.257),
          child: Text('Dia ${horario}'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: largura * 0.02),
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                setPrazo();
              },
            ),
          )
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/7.png"), fit: BoxFit.cover)),
          width: largura * 1,
          height: altura,
          child: const AlimentacaoWidget()),
    );
  }
}
