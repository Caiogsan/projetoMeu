import 'package:flutter/material.dart';
import 'package:teste5/projeto/Treinamento/meus_treinos/treinamentos_select/treinamentos_select_page.dart';

class TreinosPage extends StatelessWidget {
  const TreinosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: altura * 1,
              width: largura * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/16.png'), fit: BoxFit.cover)),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1),
                ),
                width: largura * 0.9,
                height: altura * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Meus Treinos',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: altura * 0.01,
                    ),
                    FutureBuilder(
                        future: alo(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Center(
                              child: Container(
                                height: altura * 0.8,
                                width: largura * 0.7,
                                child: ListView.builder(
                                  itemBuilder: (_, index) {
                                    return SizedBox(
                                      height: altura * 0.25,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Colors.white.withOpacity(0.2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25)),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const TreinamentosSelect()),
                                            );
                                          },
                                          child: Icon(
                                            Icons.add,
                                            size: 60,
                                          )),
                                    );
                                  },
                                  itemCount: 1,
                                ),
                              ),
                            );
                          } else {
                            return const CircularProgressIndicator();
                          }
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future alo() {
    return Future(() => 2);
  }
}
