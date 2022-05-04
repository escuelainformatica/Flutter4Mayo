import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../globales/mis_globales.dart';

class PaginaPais extends StatefulWidget {
  String nombrePais;
  String textoDigitado="";
  PaginaPais(this.nombrePais,{Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return PaginaPaisEstado(nombrePais);
  }
}

class PaginaPaisEstado extends State<PaginaPais> {
  String nombrePais2;
  PaginaPaisEstado(this.nombrePais2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pagina pais"),),
      body: Column(
        children: [
          Text("El pais es ${widget.nombrePais} ${nombrePais2}"),
          TextField(
            onChanged: (value) {
              widget.textoDigitado=value;
            },
          )

        ],
      )
    );
  }

}