import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Sliders'),
       ),
       body: Container(
         padding: EdgeInsets.only(top: 50.0),
         child: Column(
           children: <Widget>[
             _crearSlider(),
             Expanded(
               child: _crearImagen()
               ),
           ],
         ),
       ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la Imagen',
      //divisions: 20,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        print(valor);
        setState(() {
          _valorSlider = valor;
        });
      },
      value: _valorSlider,
    );
  }
  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://store-images.s-microsoft.com/image/apps.43972.72022141782154086.c961f6a0-be69-45c6-8f3e-5ea67d7fad9e.3e70e558-a25f-4528-9f37-fc4445bccc27?mode=scale&q=90&h=1080&w=1920&format=jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}