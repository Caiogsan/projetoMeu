import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AlimentacaoPage extends StatefulWidget {
  const AlimentacaoPage({super.key});

  @override
  State<AlimentacaoPage> createState() => _AlimentacaoPageState();
}

class _AlimentacaoPageState extends State<AlimentacaoPage> {
  var horario;
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
          padding: EdgeInsets.only(left: largura * 0.3),
          child: Text(horario),
        ),
      ),
      body: ElevatedButton(
        onPressed: () {
          setPrazo();
        },
        child: Text('a'),
      ),
    );
  }
}
