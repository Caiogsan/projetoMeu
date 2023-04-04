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
