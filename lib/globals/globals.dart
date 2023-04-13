import 'package:flutter/material.dart';

class GlobalsWidgets {
  BuildContext context;

  GlobalsWidgets(this.context);

  Widget loadingGlobal() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class CircularProgressIndic extends StatelessWidget {
  const CircularProgressIndic({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    final altura = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        height: altura * .26,
        width: largura * .5,
        child: Stack(children: [
          ShaderMask(
              shaderCallback: (rect) {
                return SweepGradient(stops: [
                  .1,
                  .2,
                ], colors: [
                  Colors.blue,
                  Colors.grey.withAlpha(55)
                ], startAngle: 0, endAngle: 3.14 * 2, center: Alignment.center)
                    .createShader(rect);
              },
              child: Container(
                width: altura * .5,
                height: altura * .26,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              )),
          Center(
            child: Container(
              width: 160,
              height: 160,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            ),
          )
        ]),
      ),
    );
  }
}
