import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const estiloTexto = TextStyle(fontSize: 25);
  int conteo = 10;

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Numero de Clics', style: estiloTexto),
          Text('$conteo', style: estiloTexto),
        ],
      )),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            print('Hola Print');
            conteo++;
          }),
    );
  }
}
