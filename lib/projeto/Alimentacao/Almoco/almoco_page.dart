import 'package:flutter/material.dart';

import 'almoco_widgets.dart';

class AlmocoPage extends StatelessWidget {
  const AlmocoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Refeições'),
        ),
        body: const AlmocoAlimento());
  }
}
