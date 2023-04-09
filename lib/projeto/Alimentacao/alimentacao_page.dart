import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: SizedBox(
          width: largura * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: altura * .02,
              ),
              const Text(
                'Quantidade Maxima',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: altura * .032,
              ),
              Stack(children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(largura * .099, altura * .05, 0, 0),
                  height: altura * .21,
                  width: largura * .4,
                  child: const CircularProgressIndicator(
                    color: Colors.green,
                    value: 1,
                    strokeWidth: 15,
                    backgroundColor: Color.fromARGB(146, 189, 188, 188),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(
                        largura * .049, altura * .025, 0, 0),
                    height: altura * .26,
                    width: largura * .5,
                    child: const CircularProgressIndicator(
                      strokeWidth: 15,
                      value: 1,
                    )),
                SizedBox(
                    height: altura * .31,
                    width: largura * .6,
                    child: const CircularProgressIndicator(
                      strokeWidth: 15,
                      value: .5,
                      backgroundColor: Colors.red,
                      color: Colors.red,
                    )),
                const Text(
                  'Kcal:',
                  style: TextStyle(fontWeight: FontWeight.w700),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
