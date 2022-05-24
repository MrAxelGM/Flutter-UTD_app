import 'package:flutter/material.dart';

class Actividadesre extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Actividades Paraescolares')),
      body: ListView(
        children: [
          _buildItem('Paraescolar de Futbol'),
          _buildItem('Paraescolar de Voleibol'),
          _buildItem('Paraescolar de Basquetball'),
          _buildItem('Paraescolar Danza')
        ],
      ),
    );
  }

  Widget _buildItem(String textTitle) {
    return new ListTile(
      title: new Text(textTitle),
      leading: new Icon(Icons.map),
    );
  }
}
