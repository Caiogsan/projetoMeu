import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:teste5/projeto/Alimentacao/Almoco/almoco_page.dart';
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_page.dart';
import 'package:teste5/projeto/Alimentacao/Configs/configs_page.dart';
import 'package:teste5/projeto/Alimentacao/store/controller_store.dart';

class AlimentacaoWidget extends StatefulWidget {
  AlimentacaoWidget({super.key});

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
    print(controllerStoreT.countProteina);
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Container(
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
                    padding: EdgeInsets.only(top: altura * 0.14),
                    child: Text(
                      'KCAL',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: largura * 0.2),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          largura * .099, altura * .05, 0, 0),
                      height: altura * .21,
                      width: largura * .4,
                      child: CircularProgressIndicator(
                        color: Colors.green,
                        value: controllerStoreT.countGordura.toDouble() / 60,
                        strokeWidth: 15,
                        backgroundColor: Color.fromARGB(146, 140, 240, 131),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(
                            largura * .049, altura * .025, 0, 0),
                        height: altura * .26,
                        width: largura * .5,
                        child: CircularProgressIndicator(
                            backgroundColor: Color.fromARGB(146, 146, 148, 241),
                            strokeWidth: 15,
                            value: controllerStoreT.countProteina.toDouble() /
                                160)),
                    SizedBox(
                        height: altura * .31,
                        width: largura * .6,
                        child: CircularProgressIndicator(
                          backgroundColor: Color.fromARGB(146, 245, 149, 149),
                          strokeWidth: 15,
                          value: controllerStoreT.countCarbo.toDouble() / 160,
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
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: EdgeInsets.only(right: largura * 0.003),
                        child: CircleAvatar(
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
