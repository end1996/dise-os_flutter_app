import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulo(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _backgroundApp() {
    final gradiente = Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 400.0,
        width: 340.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ])),
      ),
    );

    return Stack(
      children: [
        gradiente, 
        Positioned(top: -90.0, child: pinkBox)],
    );
  }

  Widget _titulo() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Transaction',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1.0),
        iconSize: 30.0,
        fixedColor: const Color.fromRGBO(236, 98, 188, 1.0),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1.0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: '',
          ),
        ]);
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
          _crearBotonRedondeado(Icons.grid_view_sharp, 'General', Colors.lightBlue),
          _crearBotonRedondeado(Icons.directions_bus, 'Transport', Colors.deepPurpleAccent),
         ]
        ),
        TableRow(
          children: [
          _crearBotonRedondeado(Icons.shopping_bag, 'Shopping', Colors.pinkAccent),
          _crearBotonRedondeado(Icons.account_balance, 'Bills', Colors.orange),
         ]
        ),
        TableRow(
          children: [
          _crearBotonRedondeado(Icons.video_library, 'Entertainment', Colors.blue),
          _crearBotonRedondeado(Icons.fastfood, 'Grocery', Colors.green),
         ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(IconData icon, String titulo, Color color) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          height: 160.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(62, 66, 107, 0.7),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 30.0,
                child: Icon(icon, size: 30.0, color: Colors.white),
              ),
              Text(
                titulo,
                style: TextStyle(color: color, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
