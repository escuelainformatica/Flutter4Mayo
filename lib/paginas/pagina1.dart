import 'package:flutter/material.dart';
import 'package:untitled4/paginas/pagina2.dart';
import 'package:untitled4/paginas/pagina_pais.dart';
import 'package:untitled4/widget/menu_lateral.dart';

import '../globales/mis_globales.dart';

class Pagina1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PaginaEstado();
  }
}

class PaginaEstado extends State<Pagina1> {

  var paises=["Chile","Argentina","Peru","Bolivia"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("pagina 1"),),
      body: Column(
        children: [
          Text("mundo"),
          GestureDetector(
            onTap: () {
              setState(() {
                  contador=contador+1;
              });
            },
            child: Text("hola"),
          ),
          Text("El contador es igual a ${contador}"),
          Container(
            height: 200,
            color: Colors.black12,
            child: ListView.builder(
                itemCount: paises.length,
                itemBuilder: (context,index) {
                  return GestureDetector(
                    onTap: () async {
                      var pagina=PaginaPais(paises[index]);
                      await Navigator.push(context, MaterialPageRoute(builder: (context) =>pagina ),);

                      // busca el primer padre o abuelo o visabuelo que es del tipo Scaffold
                      // y dentro de el, dibuja la barra de snack.
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("el valor de la pagina es ${pagina.textoDigitado}"))
                      );


                    },
                    child: Text(paises[index]),
                  );
                })
            ,
          )
        ],
      ),
      drawer: MenuLateral()
    );
  }

}