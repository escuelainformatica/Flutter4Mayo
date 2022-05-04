import 'package:flutter/material.dart';
import 'package:untitled4/paginas/pagina1.dart';

void main() {
  runApp(PrimeraAplicacion());
}

class PrimeraAplicacion extends StatelessWidget {

  String titulo="este es el titulo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pagina1()
    );
  }

}