import 'package:flutter/material.dart';
import 'Screens/tela_flag.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: TelaFlag(),
    );
  }
}
