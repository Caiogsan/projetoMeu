import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:teste5/projeto/Alimentacao/Cafe/cafe_widget.dart';
import 'package:teste5/projeto/Alimentacao/store/controller_store.dart';

import '../Cafe/cafe_functions.dart';
import '../Cafe/cafe_widgetjson_class.dart';
import 'almoco_functions.dart';

class AlmocoPage2 extends StatelessWidget {
  const AlmocoPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        children: [
          const Text(
            'Bebidas:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: altura * 0.05,
          ),
          SizedBox(
            height: altura * 0.3,
            width: largura * 0.9,
            child: FutureBuilder(
              future: getAllDataCafeBebida(),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  List<JsonCafeBebida> informac = snapshot.data!;

                  return ListView.builder(
                    itemBuilder: (_, index) {
                      JsonCafeBebida info = informac[index];
                      final List<Item> items = [
                        Item(
                            header: info.alimentos.toString(),
                            body: Column(
                              children: [Text('asdwd')],
                            ))
                      ];

                      return ExpansionPanelList.radio(
                        children: items
                            .map((item) => ExpansionPanelRadio(
                                value: item.header,
                                headerBuilder: (_, isExpanded) => ListTile(
                                      title: Text(item.header),
                                    ),
                                body: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(25)),
                                  height: altura * 0.15,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        width: largura * 0.04,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Informação Nutricional:',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: altura * 0.04,
                                          ),
                                          Container(
                                            height: altura * 0.027,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text('Confirma')),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: largura * 0.03,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Proteinas: ${info.proteinas}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            'Carboidratos: ${info.carboidratos}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            'Gorduras: ${info.gorduras}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )))
                            .toList(),
                      );
                    },
                    itemCount: informac.length,
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class AlmocoAlimento extends StatefulWidget {
  const AlmocoAlimento({super.key});

  @override
  State<AlmocoAlimento> createState() => _AlmocoAlimentoState();
}

class _AlmocoAlimentoState extends State<AlmocoAlimento> {
  late ControllerStore controllerStore;

  @override
  void didChangeDependencies() {
    controllerStore = Provider.of<ControllerStore>(context, listen: false);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: altura * 0.035,
              ),
              const Text(
                'Alimentos:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: altura * 0.02,
              ),
              SizedBox(
                height: altura * 0.35,
                width: largura * 0.9,
                child: FutureBuilder(
                  future: getAllDataComida(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      List<JsonCafeComida> informac = snapshot.data!;

                      return ListView.builder(
                        itemBuilder: (_, index) {
                          JsonCafeComida info = informac[index];
                          final List<Item> items = [
                            Item(
                                header: info.alimentos.toString(),
                                body: Column(
                                  children: [Text('asdwd')],
                                ))
                          ];

                          return ExpansionPanelList.radio(
                            children: items
                                .map((item) => ExpansionPanelRadio(
                                    value: item.header,
                                    headerBuilder: (_, isExpanded) => ListTile(
                                          title: Text(item.header),
                                        ),
                                    body: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      height: altura * 0.15,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            width: largura * 0.0,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Informação Nutricional:',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: altura * 0.04,
                                              ),
                                              Observer(builder: (_) {
                                                return Container(
                                                  height: altura * 0.027,
                                                  child: ElevatedButton(
                                                      onPressed: () {
                                                        controllerStore
                                                            .incrementProteina(
                                                                info.proteinas);
                                                        controllerStore
                                                            .incrementCarbo(info
                                                                .carboidratos);
                                                        controllerStore
                                                            .incrementGordura(
                                                                info.gorduras);
                                                      },
                                                      child: Text('Confirma')),
                                                );
                                              })
                                            ],
                                          ),
                                          SizedBox(
                                            width: largura * 0.03,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                'Proteinas: ${info.proteinas}',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                'Carboidratos: ${info.carboidratos}',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                'Gorduras: ${info.gorduras}',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )))
                                .toList(),
                          );
                        },
                        itemCount: informac.length,
                      );
                    }
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: altura * 0.05,
          ),
          AlmocoPage2()
        ],
      ),
    );
  }
}
