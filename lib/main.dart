import 'package:flutter/material.dart';

import 'package:disenos/src/pages/basico_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    //Para cambiar el color de la barra de estado
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.black12
    // ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {
        'basico':(context) => const BasicoPage(),
        'scroll':(context) => const ScrollPage(),
        'botones':(context) => const BotonesPage(),
      },
    );
  }
}
