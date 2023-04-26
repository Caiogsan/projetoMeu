import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:teste5/projeto/Alimentacao/Almoco/almoco_page.dart';
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_page.dart';
import 'package:teste5/projeto/Alimentacao/Configs/configs_page.dart';
import 'package:teste5/projeto/Alimentacao/store/controller_store.dart';

class AlimentacaoWidget extends StatefulWidget {
  const AlimentacaoWidget({super.key});

  @override
  State<AlimentacaoWidget> createState() => _AlimentacaoWidgetState();
}

class _AlimentacaoWidgetState extends State<AlimentacaoWidget> {
  late ControllerStore controllerStore;
  late ControllerStore controllerStoreT;
  @override
  void didChangeDependencies() {
    controllerStore = Provider.of<ControllerStore>(context, listen: false);
    controllerStoreT = Provider.of<ControllerStore>(context, listen: true);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: altura * .02,
          ),
          const Text(
            'Sua Informação',
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: altura * .032,
          ),
          Observer(builder: (_) {
            return Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: altura * 0.13),
                    child: Center(
                      child: Text(
                        controllerStoreT.countCalorias.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          largura * .111, altura * .057, 0, 0),
                      height: altura * .18,
                      width: altura * .18,
                      child: CircularProgressIndicator(
                        color: Colors.green,
                        value: controllerStoreT.countGordura.toDouble() / 80,
                        strokeWidth: 15,
                        backgroundColor:
                            const Color.fromARGB(146, 140, 240, 131),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            largura * .052, altura * .027, 0, 0),
                        height: altura * .24,
                        width: altura * .24,
                        child: CircularProgressIndicator(
                            backgroundColor:
                                const Color.fromARGB(146, 146, 148, 241),
                            strokeWidth: 15,
                            value: controllerStoreT.countProteina.toDouble() /
                                200)),
                    SizedBox(
                        height: altura * .295,
                        width: altura * .295,
                        child: CircularProgressIndicator(
                          backgroundColor:
                              const Color.fromARGB(146, 245, 149, 149),
                          strokeWidth: 15,
                          value: controllerStoreT.countCarbo.toDouble() / 300,
                          color: Colors.red,
                        )),
                  ],
                ),
              )
            ]);
          }),
          const AlimentacaoWidget2()
        ],
      ),
    );
  }
}

class AlimentacaoWidget2 extends StatelessWidget {
  const AlimentacaoWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: altura * 0.04,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  height: altura * 0.015,
                  width: largura * 0.03,
                ),
                SizedBox(
                  width: largura * 0.02,
                ),
                const Text(
                  'Proteinas',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25)),
                  height: altura * 0.015,
                  width: largura * 0.03,
                ),
                SizedBox(
                  width: largura * 0.02,
                ),
                const Text('Carboidratos'),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25)),
                  height: altura * 0.015,
                  width: largura * 0.03,
                ),
                SizedBox(
                  width: largura * 0.02,
                ),
                const Text('Gorduras'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: altura * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CafePage()),
                  );
                },
                child: const Center(
                  child: Material(
                      elevation: 20,
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: CircleAvatar(
                        maxRadius: 70.0,
                        backgroundImage: AssetImage('assets/1.png'),
                      )),
                )),
            SizedBox(
              width: largura * 0.12,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AlmocoPage()),
                  );
                },
                child: const Center(
                  child: Material(
                      elevation: 20,
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: CircleAvatar(
                        maxRadius: 60.0,
                        backgroundImage: AssetImage('assets/2.png'),
                      )),
                )),
          ],
        ),
        SizedBox(
          height: altura * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ConfigsPage()),
                  );
                },
                child: Center(
                  child: Material(
                      elevation: 20,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: EdgeInsets.only(right: largura * 0.003),
                        child: const CircleAvatar(
                          maxRadius: 60.0,
                          backgroundImage: AssetImage('assets/5.png'),
                        ),
                      )),
                )),
            SizedBox(
              width: largura * 0.12,
            ),
            GestureDetector(
                child: const Center(
              child: Material(
                  elevation: 20,
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAlias,
                  child: CircleAvatar(
                    maxRadius: 70.0,
                    backgroundImage: AssetImage('assets/4.png'),
                  )),
            )),
          ],
        )
      ],
    );
  }
}
