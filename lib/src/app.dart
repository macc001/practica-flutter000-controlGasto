import 'package:flutter/material.dart';

import 'package:control_gasto/src/pages/control_gasto.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ControlGasto(),
      ),
    );
  }
}
