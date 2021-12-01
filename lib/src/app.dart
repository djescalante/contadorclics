//import 'package:contadorholamundo/src/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'pages/contador_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  //el contex tiene toda la informacion del arbol de  widges
  Widget build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
