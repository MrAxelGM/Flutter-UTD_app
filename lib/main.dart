import 'package:examen_escuela/src/pages/actividades_re.dart';
import 'package:examen_escuela/src/pages/calificaciones.dart';
import 'package:examen_escuela/src/pages/eventos.dart';
import 'package:examen_escuela/src/pages/galeria.dart';
import 'package:examen_escuela/src/pages/home_page.dart';
import 'package:examen_escuela/src/pages/menu.dart';
import 'package:examen_escuela/src/pages/salir.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: "/",
      routes: {
        // '/': (BuildContext context) => MenuPage(),
        // '/alert': (BuildContext context) => Calificaciones(),
        '/': (BuildContext context) => MenuPage(),
        'alert': (BuildContext context) => Calificaciones(),
        'avatar': (BuildContext context) => Actividadesre(),
        'card': (BuildContext context) => Galeria(),
        'list': (BuildContext context) => Eventos(),
        'exit': (BuildContext context) => Salir(),
      },
    );
  }
}
