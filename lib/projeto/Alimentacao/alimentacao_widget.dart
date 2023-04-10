import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_page.dart';

class AlimentacaoWidget extends StatelessWidget {
  const AlimentacaoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Column(
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
            margin: EdgeInsets.fromLTRB(largura * .099, altura * .05, 0, 0),
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
              margin: EdgeInsets.fromLTRB(largura * .049, altura * .025, 0, 0),
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
        const AlimentacaoWidget2()
      ],
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
                const Text('Proteinas'),
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
                        child: Center(
                          child: Text(
                            'Café',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
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
                    maxRadius: 60.0,
                    backgroundImage: AssetImage('assets/2.png'),
                    child: Center(
                      child: Text(
                        'Almoço',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
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
                child: const Center(
              child: Material(
                  elevation: 20,
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAlias,
                  child: CircleAvatar(
                    maxRadius: 60.0,
                    backgroundImage: AssetImage('assets/3.png'),
                    child: Center(
                      child: Text(
                        'Janta',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
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
                    child: Center(
                      child: Text(
                        'Sobremesas',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  )),
            )),
          ],
        )
      ],
    );
  }
}
