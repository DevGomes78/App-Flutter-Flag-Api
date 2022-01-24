import 'package:flutter/material.dart';
import 'package:flutter_flag/routes/app_routes.dart';
import 'Screens/tela_flag.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     routes: {
        AppRoutes.HOME:(context)=> HomePage(),
        AppRoutes.APIFLAG: (context)=> TelaFlag(),

     },
    );
  }
}

