import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final opciones = ['Uno', 'Dos','Tres', 'Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Componentes Temp'),
          ),
          body: ListView(
            children: _crearItemsCorta()// _crearItems()
          ),
        );
  }
  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider(color: Colors.black));
      
    }
    return lista;
  }
  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.access_alarms),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Hola $item');
            },
            ),
            
          Divider(color: Colors.black),
        ],
      );
    }).toList();
  }

}