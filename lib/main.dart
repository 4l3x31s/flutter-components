import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';

// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales:  [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
      title: 'Material App',
      //home: HomePage(),      //HomePageTemp()
      initialRoute: '/',
      routes: getApplicationRoutes(), // metodos de las rutas
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');
        //cuando no esta definida la ruta por aca viene y valida on generate
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}