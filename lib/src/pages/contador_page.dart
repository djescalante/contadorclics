import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

//esta clase se solo se utilza dentro de
class _ContadorPageState extends State<ContadorPage> {
  static const _estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bienvenido a Statefull'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Numero de Clics', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      const SizedBox(
        width: 30.0,
      ),
      FloatingActionButton(
        child: const Icon(Icons.exposure_zero),
        onPressed: _inicializar,
      ),
      const Expanded(
        child: SizedBox(),
      ),
      FloatingActionButton(
        child: const Icon(Icons.remove),
        onPressed: _eliminar,
      ),
      const SizedBox(
        width: 5.0,
      ),
      FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: _agregar,
      ),
    ]);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _eliminar() {
    setState(() => _conteo--);
  }

  void _inicializar() {
    setState(() => _conteo = 0);
  }
}
