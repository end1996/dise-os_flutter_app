import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  const BasicoPage({super.key});

  final estiloTitulo =
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = const TextStyle(fontSize: 14.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return const SizedBox(
      width: double.infinity,
      child: Image(
          image: NetworkImage(
              'https://www.nyip.edu/images/cms/photo-articles/the-best-place-to-focus-in-a-landscape.jpg'),
              height: 300.0,
              fit: BoxFit.cover,
              ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Landscape Random',
                    style: estiloTitulo,
                  ),
                  const SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Nowhere, Island',
                    style: estiloSubtitulo,
                  )
                ],
              ),
            ),
            Row(
              children: const [
                Icon(Icons.star, color: Colors.red),
                Text('41'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(texto, style: const TextStyle(color: Colors.blue, fontSize: 15.0)),
      ],
    );
  }

  Widget _crearTexto() {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
          'Laboris culpa ut ea ad velit cillum excepteur. Minim occaecat est commodo non laborum minim dolore incididunt. Exercitation deserunt nisi anim elit ex. Voluptate laborum do voluptate consectetur labore veniam enim dolore aliqua quis pariatur. Labore eu eu incididunt et aute amet proident. Amet sint Lorem exercitation adipisicing tempor deserunt et duis. Minim quis voluptate veniam nostrud laboris eiusmod pariatur.',
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}
