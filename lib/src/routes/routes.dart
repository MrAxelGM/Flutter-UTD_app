// import 'package:componentes/src/pages/card_page.dart';
import 'package:examen_escuela/src/pages/menu.dart';
import 'package:flutter/material.dart';

import 'package:examen_escuela/src/pages/calificaciones.dart';
import 'package:examen_escuela/src/pages/actividades_re.dart';
import 'package:examen_escuela/src/pages/eventos.dart';
import 'package:examen_escuela/src/pages/galeria.dart';
import 'package:examen_escuela/src/pages/salir.dart';

// Modificar esto mas adelante.
Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => MenuPage(),
    'avatar': (BuildContext context) => Actividadesre(),
    'alert': (BuildContext context) => Calificaciones(),
    'card': (BuildContext context) => Galeria(),
    'list': (BuildContext context) => Eventos(),
    'exit': (BuildContext context) => Salir(),
  };
}
