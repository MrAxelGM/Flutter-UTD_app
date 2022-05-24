import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(context),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.5),
              colors: [
            Color.fromRGBO(233, 246, 241, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 7.0,
      child: Container(
        height: 310.0,
        width: 310.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(95.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(221, 246, 240, 1.0),
              Color.fromRGBO(196, 240, 28, 10.0),
            ])),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -90.0,
          child: cajaRosa,
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Menu Principal',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Bienvenidos a la aplicación de la UTD',
                style: TextStyle(color: Colors.black54, fontSize: 16.0)),
          ],
        ),
      ),
    );
  }

  Widget _botonesRedondeados(BuildContext context) {
    return Table(children: [
      TableRow(children: <Widget>[
        _crearBotonRedondeado(Colors.blue, Icons.perm_identity_outlined,
            'Calificaciones', context, 'alert'),
        _crearBotonRedondeado(Colors.red, Icons.accessibility,
            'Actividades Recreativas', context, 'avatar'),
      ]),
      TableRow(children: [
        _crearBotonRedondeado(
            Colors.pink, Icons.panorama, 'Galería', context, 'card'),
        _crearBotonRedondeado(Colors.teal, Icons.receipt_long_rounded,
            'Eventos Escolares', context, 'list'),
      ]),
      TableRow(children: [
        _crearBotonRedondeado(
            Colors.green[900], Icons.video_library, 'Promoción', context, ''),
        _crearBotonRedondeado(
            Colors.indigo, Icons.exit_to_app_sharp, 'Salir', context, 'exit'),
      ]),
    ]);
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0),
              title: Container()),
        ],
      ),
    );
  }

  Widget _crearBotonRedondeado(
      Color color, IconData icono, String texto, BuildContext context, ruta) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, ruta);
        },
        child: Container(
          height: 130.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(222, 166, 127, 0.7),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icono,
                  color: Colors.white,
                  size: 30.0,
                ),
              ),
              Text(texto, style: TextStyle(color: color)),
              SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }
}
