import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';
 
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: HomePage(),      //HomePageTemp()
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/'      : (BuildContext context) => HomePage(),
        'alert'  : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');
        //cuando no esta definida la ruta por aca viene y valida on generate route
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}