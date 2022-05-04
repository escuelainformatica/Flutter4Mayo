import 'package:flutter/material.dart';

import '../paginas/pagina2.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.all(10),
      children: [
        ElevatedButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagina2()),
            );
          },
          child: Text("ir a pagina 2"),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagina2()),
            );
          },
          child: Text("ir a pagina 3"),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
            Navigator.pop(context);
          },
          child: Text("Volver"),
        ),
      ],
    ));
  }
}
