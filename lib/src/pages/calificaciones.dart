import 'package:examen_escuela/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new Calificaciones());

class Calificaciones extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final tabController = new DefaultTabController(
      length: 5,
      child: new Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: new Text("Calificaciones"),
          // centerTitle: true
          bottom: new TabBar(indicatorColor: Colors.red, tabs: [
            new Tab(text: "C1"),
            new Tab(text: "C2"),
            new Tab(text: "C3"),
            new Tab(text: "PF"),
            new Tab(text: "Prom")
          ]),
        ),
        body: Center(
          child: Text('La Califiacion de tu primer parcial es: 10'),
        ),
      ),
    );
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: tabController,
    );
  }
}
