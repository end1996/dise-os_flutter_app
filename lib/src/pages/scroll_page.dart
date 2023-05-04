import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [_pagina1(), _pagina2()],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _backgroundColor(),
        _backgroundImage(),
        _dateTime(),
      ],
    );
  }

  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage() {
    return const SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/133 scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  final estiloTexto = const TextStyle(color: Colors.white, fontSize: 50.0);

  Widget _dateTime() {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          Text('11°', style: estiloTexto),
          Text('Miércoles', style: estiloTexto),
          const Expanded(child: Center()),
          const Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _pagina2() {
    return Stack(
      children: [_backgroundColor(), _buttonPage2()],
    );
  }

  Widget _buttonPage2() {
    return Center(
      child: SizedBox(
        height: 50.0,
        width: 250.0,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(elevation: MaterialStateProperty.all(2)),
          child: const Text(
            'Bienvenido',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
